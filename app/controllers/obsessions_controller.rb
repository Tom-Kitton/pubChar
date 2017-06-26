class ObsessionsController < ApplicationController
  before_action :set_obsession, only: [:show, :edit, :update, :destroy]

  # GET /obsessions
  # GET /obsessions.json
  def index
    @obsessions = Obsession.all
  end

  # GET /obsessions/1
  # GET /obsessions/1.json
  def show
  end

  # GET /obsessions/new
  def new
    @obsession = Obsession.new
  end

  # GET /obsessions/1/edit
  def edit
  end

  # POST /obsessions
  # POST /obsessions.json
  def create
    @obsession = Obsession.new(obsession_params)

    respond_to do |format|
      if @obsession.save
        format.html { redirect_to @obsession, notice: 'Obsession was successfully created.' }
        format.json { render :show, status: :created, location: @obsession }
      else
        format.html { render :new }
        format.json { render json: @obsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /obsessions/1
  # PATCH/PUT /obsessions/1.json
  def update
    respond_to do |format|
      if @obsession.update(obsession_params)
        format.html { redirect_to @obsession, notice: 'Obsession was successfully updated.' }
        format.json { render :show, status: :ok, location: @obsession }
      else
        format.html { render :edit }
        format.json { render json: @obsession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /obsessions/1
  # DELETE /obsessions/1.json
  def destroy
    @obsession.destroy
    respond_to do |format|
      format.html { redirect_to obsessions_url, notice: 'Obsession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_obsession
      @obsession = Obsession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def obsession_params
      params.require(:obsession).permit(:content)
    end
end
