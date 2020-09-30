class PersonalDataController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
     @personal_data = PersonalDatum.all
  end









  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_datum
      @emmend = PersonalDatum.find(params[:id])
    end

    # Only allow a trusted parameter "white-list" through.
    def personal_datum_params
      params.require(:personal_datum).permit(:iptu, :scholar_attendancy, :health_information, :licence, :social_assistancy, :contract, :public_security, :traffic, :construction)
    end

end
