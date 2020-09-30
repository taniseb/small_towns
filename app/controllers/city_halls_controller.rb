class CityHallsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  # before_action :set_city_hall, only: [:show, :edit, :update, :destroy]

  # GET /city_halls
  def index

    @city_halls = CityHall.all

    # if params[:query].present?
    #   @city_halls = CityHall.search_by_name_and_description_and_project_and_thema(params[:query])
    # else
    #   @city_halls = CityHall.all
    # end

    #   @city_halls = @city_halls.order("updated_at DESC")

  end

  # GET /city_halls/1
  def show
  #   @support = Support.new
  #   @city_hall = CityHall.find(params[:id])
  #   @current_user = current_user
  #   @user_is_supporter = @city_hall.supports.any? do |support|
  #     support.supporter == current_user
  #   end
  # end

  # GET /city_halls/new
  def new
    # @city_hall = CityHall.new
  end

  # GET /city_halls/1/edit
  def edit
  end

  # POST /city_halls
  def create
    # @city_hall = city_hall.new(city_hall_params)
    # @city_hall.user = current_user

    # if @city_hall.save
    #   redirect_to @city_hall, notice: 'city_hall was successfully created.'
    # else
    #   render :new
    # end
  end

  # PATCH/PUT /city_halls/1
  def update
    # if @city_hall.update(city_hall_params)
    #   redirect_to @city_hall, notice: 'city_hall was successfully updated.'
    # else
    #   render :edit
    # end
  end

  # DELETE /city_halls/1
  def destroy

    # if @city_hall.user != current_user
    #   redirect_to root_path, alert: 'Not authorized'
    #   return
    # end

    # @city_hall.destroy
    # redirect_to city_halls_url, notice: 'city_hall was successfully deleted.'
  end
  def home
    # @supports = Support.all
    # @user_is_supporter = @supports.select do |support|
    #   support.supporter == current_user
    # end
    # @city_halls = CityHall.all
    # @user_created = @city_halls.select do |city_hall|
    #   city_hall.user == current_user
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_city_hall
      @city_hall = CityHall.find(params[:id])
    end

    # Only allow a trusted parameter "white-list" through.
    def city_hall_params
      params.require(:city_hall).permit(:name, :ibge_code)
    end

  end

end
