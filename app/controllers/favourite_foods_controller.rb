class FavouriteFoodsController < ApplicationController
  before_action :set_favourite_food, only: [:show, :edit, :update, :destroy]

  # GET /favourite_foods
  # GET /favourite_foods.json
  def index
    @favourite_foods = FavouriteFood.all
  end

  # GET /favourite_foods/1
  # GET /favourite_foods/1.json
  def show
  end

  # GET /favourite_foods/new
  def new
    @favourite_food = FavouriteFood.new
  end

  # GET /favourite_foods/1/edit
  def edit
  end

  # POST /favourite_foods
  # POST /favourite_foods.json
  def create
    @favourite_food = FavouriteFood.new(favourite_food_params)

    respond_to do |format|
      if @favourite_food.save
        format.html { redirect_to @favourite_food, notice: 'Favourite food was successfully created.' }
        format.json { render :show, status: :created, location: @favourite_food }
      else
        format.html { render :new }
        format.json { render json: @favourite_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favourite_foods/1
  # PATCH/PUT /favourite_foods/1.json
  def update
    respond_to do |format|
      if @favourite_food.update(favourite_food_params)
        format.html { redirect_to @favourite_food, notice: 'Favourite food was successfully updated.' }
        format.json { render :show, status: :ok, location: @favourite_food }
      else
        format.html { render :edit }
        format.json { render json: @favourite_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourite_foods/1
  # DELETE /favourite_foods/1.json
  def destroy
    @favourite_food.destroy
    respond_to do |format|
      format.html { redirect_to favourite_foods_url, notice: 'Favourite food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite_food
      @favourite_food = FavouriteFood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favourite_food_params
      params.require(:favourite_food).permit(:content)
    end
end
