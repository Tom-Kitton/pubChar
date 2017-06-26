class MoralAlignmentsController < ApplicationController
  before_action :set_moral_alignment, only: [:show, :edit, :update, :destroy]

  # GET /moral_alignments
  # GET /moral_alignments.json
  def index
    @moral_alignments = MoralAlignment.all
  end

  # GET /moral_alignments/1
  # GET /moral_alignments/1.json
  def show
  end

  # GET /moral_alignments/new
  def new
    @moral_alignment = MoralAlignment.new
  end

  # GET /moral_alignments/1/edit
  def edit
  end

  # POST /moral_alignments
  # POST /moral_alignments.json
  def create
    @moral_alignment = MoralAlignment.new(moral_alignment_params)

    respond_to do |format|
      if @moral_alignment.save
        format.html { redirect_to @moral_alignment, notice: 'Moral alignment was successfully created.' }
        format.json { render :show, status: :created, location: @moral_alignment }
      else
        format.html { render :new }
        format.json { render json: @moral_alignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moral_alignments/1
  # PATCH/PUT /moral_alignments/1.json
  def update
    respond_to do |format|
      if @moral_alignment.update(moral_alignment_params)
        format.html { redirect_to @moral_alignment, notice: 'Moral alignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @moral_alignment }
      else
        format.html { render :edit }
        format.json { render json: @moral_alignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moral_alignments/1
  # DELETE /moral_alignments/1.json
  def destroy
    @moral_alignment.destroy
    respond_to do |format|
      format.html { redirect_to moral_alignments_url, notice: 'Moral alignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_moral_alignment
      @moral_alignment = MoralAlignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def moral_alignment_params
      params.require(:moral_alignment).permit(:content)
    end
end
