class StarSignsController < ApplicationController
  before_action :set_star_sign, only: [:show, :edit, :update, :destroy]

  # GET /star_signs
  # GET /star_signs.json
  def index
    @star_signs = StarSign.all
  end

  # GET /star_signs/1
  # GET /star_signs/1.json
  def show
  end

  # GET /star_signs/new
  def new
    @star_sign = StarSign.new
  end

  # GET /star_signs/1/edit
  def edit
  end

  # POST /star_signs
  # POST /star_signs.json
  def create
    @star_sign = StarSign.new(star_sign_params)

    respond_to do |format|
      if @star_sign.save
        format.html { redirect_to @star_sign, notice: 'Star sign was successfully created.' }
        format.json { render :show, status: :created, location: @star_sign }
      else
        format.html { render :new }
        format.json { render json: @star_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /star_signs/1
  # PATCH/PUT /star_signs/1.json
  def update
    respond_to do |format|
      if @star_sign.update(star_sign_params)
        format.html { redirect_to @star_sign, notice: 'Star sign was successfully updated.' }
        format.json { render :show, status: :ok, location: @star_sign }
      else
        format.html { render :edit }
        format.json { render json: @star_sign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /star_signs/1
  # DELETE /star_signs/1.json
  def destroy
    @star_sign.destroy
    respond_to do |format|
      format.html { redirect_to star_signs_url, notice: 'Star sign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_star_sign
      @star_sign = StarSign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def star_sign_params
      params.require(:star_sign).permit(:content)
    end
end
