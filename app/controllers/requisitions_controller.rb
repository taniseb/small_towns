class RequisitionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  # before_action :set_requisition, only: [:show, :edit, :update, :destroy]

  # GET /requisitions
  def all
    @requisitions= Requisition.all
  end

  def index
    @requisitions = current_user.datum_admin ? Requisition.where(status: "pendente") : Requisition.where(user: current_user)
    @requisitions = @requisitions.order(created_at: :desc)
    @user = current_user
  end

  # GET /requisitions/1
  def show
    @requisition = Requisition.find(params[:id])
    @user = current_user.datum_admin? ? User.find(@requisition.user.id) : User.find(current_user.id)

  end

  # GET /requisitions/new
  def new
    @requisition = Requisition.new
    @user = User.find(current_user.id)
  end

  # GET /requisitions/1/edit
  def edit
  end

  # POST /requisitions
  def create
    @requisition = Requisition.new(requisition_params)
    @requisition.user = User.find(current_user.id)
    @requisition.personal_datum = @requisition.find_personal_datum

    #@requisition.errors.add(:new_value, "não pode ser mudado por x, y e z")
    if @requisition.save
      redirect_to user_root_path, alert: 'requisition was successfully created.'
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

      if (@requisition.excluded == true && @requisition.status == "aprovada" && @requisition.personal_datum.present?)
        personal_datum = @requisition.personal_datum
        personal_datum.datum_information = ""
        personal_datum.datum_access = ""
        personal_datum.datum_font = ""
        personal_datum.save
      elsif @requisition.new_value != "" && @requisition.status == "aprovada" && !@requisition.personal_datum.nil?
        @requisition.personal_datum.datum_information = @requisition.new_value
        @requisition.personal_datum.save
      end
    end
    redirect_to user_root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisition
      @requisition = Requisition.find(params[:id])
    end

    # Only allow a trusted parameter "white-list" through.
    def requisition_params
      params.require(:requisition).permit(:status, :field_name, :new_value, :justification,:excluded)
    end

    # def set_personal_data
    #   if @requisition.field_name == @personal_data.datum_font && @requisition.user ==  @personal_data.user
    #     @requisitions.personal_data_id = @personal_data_id
    #   end
    # end

end
