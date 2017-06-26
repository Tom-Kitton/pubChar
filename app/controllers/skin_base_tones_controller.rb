class SkinBaseTonesController < ApplicationController
  before_action :set_skin_base_tone, only: [:show, :edit, :update, :destroy]

  # GET /skin_base_tones
  # GET /skin_base_tones.json
  def index
    @skin_base_tones = SkinBaseTone.all
  end

  # GET /skin_base_tones/1
  # GET /skin_base_tones/1.json
  def show
  end

  # GET /skin_base_tones/new
  def new
    @skin_base_tone = SkinBaseTone.new
  end

  # GET /skin_base_tones/1/edit
  def edit
  end

  # POST /skin_base_tones
  # POST /skin_base_tones.json
  def create
    @skin_base_tone = SkinBaseTone.new(skin_base_tone_params)

    respond_to do |format|
      if @skin_base_tone.save
        format.html { redirect_to @skin_base_tone, notice: 'Skin base tone was successfully created.' }
        format.json { render :show, status: :created, location: @skin_base_tone }
      else
        format.html { render :new }
        format.json { render json: @skin_base_tone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /skin_base_tones/1
  # PATCH/PUT /skin_base_tones/1.json
  def update
    respond_to do |format|
      if @skin_base_tone.update(skin_base_tone_params)
        format.html { redirect_to @skin_base_tone, notice: 'Skin base tone was successfully updated.' }
        format.json { render :show, status: :ok, location: @skin_base_tone }
      else
        format.html { render :edit }
        format.json { render json: @skin_base_tone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /skin_base_tones/1
  # DELETE /skin_base_tones/1.json
  def destroy
    @skin_base_tone.destroy
    respond_to do |format|
      format.html { redirect_to skin_base_tones_url, notice: 'Skin base tone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skin_base_tone
      @skin_base_tone = SkinBaseTone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def skin_base_tone_params
      params.require(:skin_base_tone).permit(:content)
    end
end
