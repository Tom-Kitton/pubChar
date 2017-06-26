class FavouriteDrinksController < ApplicationController
  before_action :set_favourite_drink, only: [:show, :edit, :update, :destroy]

  # GET /favourite_drinks
  # GET /favourite_drinks.json
  def index
    @favourite_drinks = FavouriteDrink.all
  end

  # GET /favourite_drinks/1
  # GET /favourite_drinks/1.json
  def show
  end

  # GET /favourite_drinks/new
  def new
    @favourite_drink = FavouriteDrink.new
  end

  # GET /favourite_drinks/1/edit
  def edit
  end

  # POST /favourite_drinks
  # POST /favourite_drinks.json
  def create
    @favourite_drink = FavouriteDrink.new(favourite_drink_params)

    respond_to do |format|
      if @favourite_drink.save
        format.html { redirect_to @favourite_drink, notice: 'Favourite drink was successfully created.' }
        format.json { render :show, status: :created, location: @favourite_drink }
      else
        format.html { render :new }
        format.json { render json: @favourite_drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favourite_drinks/1
  # PATCH/PUT /favourite_drinks/1.json
  def update
    respond_to do |format|
      if @favourite_drink.update(favourite_drink_params)
        format.html { redirect_to @favourite_drink, notice: 'Favourite drink was successfully updated.' }
        format.json { render :show, status: :ok, location: @favourite_drink }
      else
        format.html { render :edit }
        format.json { render json: @favourite_drink.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favourite_drinks/1
  # DELETE /favourite_drinks/1.json
  def destroy
    @favourite_drink.destroy
    respond_to do |format|
      format.html { redirect_to favourite_drinks_url, notice: 'Favourite drink was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favourite_drink
      @favourite_drink = FavouriteDrink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favourite_drink_params
      params.require(:favourite_drink).permit(:content)
    end
end
