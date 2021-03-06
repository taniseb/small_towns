class PersonalDataController < ApplicationController
  before_action :set_personal_datum, only: [:index, :show]
  before_action :personal_datum_auth, only: [:index, :show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index; end

  def show; end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_datum
      # raise
      @personal_data = PersonalDatum.where(user_id: params[:user_id])
    end

    # Only allow a trusted parameter "white-list" through.
    def personal_datum_params
      params.require(:personal_datum).permit(:datum_font, :datum_information,:datum_access,:user_id)
    end

    def personal_datum_auth
      @user = User.find(params[:user_id])
      @requisition = Requisition.where(user_id: @user.id, status: "aprovada")
      @personal_datum = []
      @requisition.each do |r|
        @personal_datum << PersonalDatum.find_by(datum_font: r.field_name)
      end
       @personal_datum.sort_by {|p|p.updated_at}.reverse
    end
end
