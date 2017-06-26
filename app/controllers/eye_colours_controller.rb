class EyeColoursController < ApplicationController
  before_action :set_eye_colour, only: [:show, :edit, :update, :destroy]

  # GET /eye_colours
  # GET /eye_colours.json
  def index
    @eye_colours = EyeColour.all
  end

  # GET /eye_colours/1
  # GET /eye_colours/1.json
  def show
  end

  # GET /eye_colours/new
  def new
    @eye_colour = EyeColour.new
  end

  # GET /eye_colours/1/edit
  def edit
  end

  # POST /eye_colours
  # POST /eye_colours.json
  def create
    @eye_colour = EyeColour.new(eye_colour_params)

    respond_to do |format|
      if @eye_colour.save
        format.html { redirect_to @eye_colour, notice: 'Eye colour was successfully created.' }
        format.json { render :show, status: :created, location: @eye_colour }
      else
        format.html { render :new }
        format.json { render json: @eye_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eye_colours/1
  # PATCH/PUT /eye_colours/1.json
  def update
    respond_to do |format|
      if @eye_colour.update(eye_colour_params)
        format.html { redirect_to @eye_colour, notice: 'Eye colour was successfully updated.' }
        format.json { render :show, status: :ok, location: @eye_colour }
      else
        format.html { render :edit }
        format.json { render json: @eye_colour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eye_colours/1
  # DELETE /eye_colours/1.json
  def destroy
    @eye_colour.destroy
    respond_to do |format|
      format.html { redirect_to eye_colours_url, notice: 'Eye colour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eye_colour
      @eye_colour = EyeColour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eye_colour_params
      params.require(:eye_colour).permit(:content)
    end
end
