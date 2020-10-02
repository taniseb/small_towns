class RequisitionsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  # before_action :set_requisition, only: [:show, :edit, :update, :destroy]

  # GET /requisitions
  def index
    @requisitions = Requisition.all

  end


  # GET /requisitions/1
  def show
  #   @support = Support.new
  #   @requisition = Requisition.find(params[:id])
  #   @current_user = current_user
  #   @user_is_supporter = @requisition.supports.any? do |support|
  #     support.supporter == current_user
  #   end
  end

  # GET /requisitions/new
  def new
    @requisition = Requisition.new

    @user = User.find(params[:user_id])

  end

  # GET /requisitions/1/edit
  def edit
  end

  # POST /requisitions
  def create
    @requisition = Requisition.new(requisition_params)
    @requisition.user = User.find(params[:user_id])
    if @requisition.save
      redirect_to user_personal_data_path(current_user), notice: 'requisition was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /requisitions/1
  def update
    # if @requisition.update(requisition_params)
    #   redirect_to @requisition, notice: 'requisition was successfully updated.'
    # else
    #   render :edit
    # end
  end

  # DELETE /requisitions/1
  def destroy

    # if @requisition.user != current_user
    #   redirect_to root_path, alert: 'Not authorized'
    #   return
    # end

    # @requisition.destroy
    # redirect_to requisitions_url, notice: 'requisition was successfully deleted.'
  end

  def change_status
    binding.pry
    @requisition = Requisition.find(params[:requisition_id])
    if @requisition.user.datum_admin == false
      redirect_to root_path, alert: 'Not authorized'
    else
      @requisition.status = #COMO FAZER?
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requisition
      @requisition = Requisition.find(params[:id])
    end

    # Only allow a trusted parameter "white-list" through.
    def requisition_params
      params.require(:requisition).permit(:status, :field_name, :new_value, :justification)
    end

end
