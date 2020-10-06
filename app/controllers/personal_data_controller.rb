class PersonalDataController < ApplicationController

  before_action :set_personal_datum, only: [:index]

  skip_before_action :authenticate_user!, only: [:index, :show]



  def index
    @user = User.find(params[:user_id])

  end

  def show
    @current_user = current_user
  end

  def destroy
        #current_user.requisitions.where(status: "approved", new_value: nil, excluded: false))
      if @requisition.status == "aprovada"
        @personal_datum = PersonalDatum.find_by(user_id: @requisition.user_id, datum_font: @requisition.field_name)

      #1. ver se está aprovada.
        if requisition.excluded == true
      #2. Se estiver aprovada & excluded: true:
        end
       #2.1destruir e mostrar no index de requisitions
       #3. Se estiver aprovada & excluded: false & new value not nil:
       #3.1 editar e mostrar no index de requisitions
       #4.  Se estiver aprovada & excluded: false & new value  nil:
        @personal_datum
      #4.1  mostrar no index de requisitions
       # if params[:status] == "aprovada"
        #personal data_new
      end
        #criação - só ocorre se aprovada
        #edição @requisiton.new_value != nil
        #deletar @requisiton.excluded == tru

      #render :edit
  end
  # def load_csv
  # requisition.user.cpf
  # end
  # def save_csv
  # end
  end

  def update
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_personal_datum
      # raise
      @personal_data = PersonalDatum.where(user_id: params[:user_id])
    end

    # Only allow a trusted parameter "white-list" through.
    def personal_datum_params
      params.require(:personal_datum).permit(:iptu, :scholar_attendancy, :health_information, :licence, :social_assistancy, :contract, :public_security, :traffic, :construction)
    end

end
