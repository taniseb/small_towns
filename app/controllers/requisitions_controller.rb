class RequisitionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  # before_action :set_requisition, only: [:show, :edit, :update, :destroy]

  # GET /requisitions
  def index
<<<<<<< HEAD
    @requisitions = Requisition.all
    @requisitions_pendente = Requisition.where(status: "pendente")
=======

    @requisitions = Requisition.where(user_id: params[:user_id])
    @user = User.find(params[:user_id])

    # @requisitions = Requisition.all

    # @requisitions_pendente = Requisition.where(status: "pendente")

    @requisitions = @requisitions.order("updated_at ASC")

>>>>>>> f68ca648274a60a1b8ee0cb27addf32c57ae2145
  end

  # GET /requisitions/1
  def show
    @requisition = Requisition.find(params[:id])
    @user = Requisition.find(params[:user_id])
  end

  def new
    @requisition = Requisition.new
    @user = User.find(params[:user_id])
  end

  def create
    @requisition = Requisition.new(requisition_params)
    @requisition.user = User.find(params[:user_id])
    if @requisition.save
      redirect_to user_personal_data_path(current_user), alert: 'requisition was successfully created.'
    else
      render :new
    end
  end

  def change_status
    @requisition = Requisition.find(params[:requisition_id])
    if current_user.datum_admin == false
      redirect_to root_path, alert: 'Not authorized'
    else
      @requisition.update(status: params[:status])
      redirect_to user_root_path
     # if @requisition.new_value == nil && @requisition.excluded == false
      #user_id = @requisition.user_id
      #atum_font = @requisition.field_name
      #personal_datum = PersonalDatum.find_by(user_id: user_id, datum_font: datum_font)

      #end
      #se a requisição for do tipo "show", mostrar os dados  de Personal Data para o usuário;
      #show: new_value is nil e excluded=false
      #se a requisição for do tipo "edit", editar os dados de Personal Data para o usuário;
      #edit"new_value not nil e excluded = false
      #se a requisição for do tipo "delete", deletar os dados do usuário
      #excluded=true

    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisition
      @requisition = Requisition.find(params[:id])
    end

    # Only allow a trusted parameter "white-list" through.
    def requisition_params
      params.require(:requisition).permit(:status, :field_name, :new_value, :justification,:excluded, :user_id)
    end

end
