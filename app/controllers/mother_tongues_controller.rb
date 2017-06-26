class MotherTonguesController < ApplicationController
  before_action :set_mother_tongue, only: [:show, :edit, :update, :destroy]

  # GET /mother_tongues
  # GET /mother_tongues.json
  def index
    @mother_tongues = MotherTongue.all
  end

  # GET /mother_tongues/1
  # GET /mother_tongues/1.json
  def show
  end

  # GET /mother_tongues/new
  def new
    @mother_tongue = MotherTongue.new
  end

  # GET /mother_tongues/1/edit
  def edit
  end

  # POST /mother_tongues
  # POST /mother_tongues.json
  def create
    @mother_tongue = MotherTongue.new(mother_tongue_params)

    respond_to do |format|
      if @mother_tongue.save
        format.html { redirect_to @mother_tongue, notice: 'Mother tongue was successfully created.' }
        format.json { render :show, status: :created, location: @mother_tongue }
      else
        format.html { render :new }
        format.json { render json: @mother_tongue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mother_tongues/1
  # PATCH/PUT /mother_tongues/1.json
  def update
    respond_to do |format|
      if @mother_tongue.update(mother_tongue_params)
        format.html { redirect_to @mother_tongue, notice: 'Mother tongue was successfully updated.' }
        format.json { render :show, status: :ok, location: @mother_tongue }
      else
        format.html { render :edit }
        format.json { render json: @mother_tongue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mother_tongues/1
  # DELETE /mother_tongues/1.json
  def destroy
    @mother_tongue.destroy
    respond_to do |format|
      format.html { redirect_to mother_tongues_url, notice: 'Mother tongue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mother_tongue
      @mother_tongue = MotherTongue.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mother_tongue_params
      params.require(:mother_tongue).permit(:content)
    end
end
