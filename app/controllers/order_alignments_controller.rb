class OrderAlignmentsController < ApplicationController
  before_action :set_order_alignment, only: [:show, :edit, :update, :destroy]

  # GET /order_alignments
  # GET /order_alignments.json
  def index
    @order_alignments = OrderAlignment.all
  end

  # GET /order_alignments/1
  # GET /order_alignments/1.json
  def show
  end

  # GET /order_alignments/new
  def new
    @order_alignment = OrderAlignment.new
  end

  # GET /order_alignments/1/edit
  def edit
  end

  # POST /order_alignments
  # POST /order_alignments.json
  def create
    @order_alignment = OrderAlignment.new(order_alignment_params)

    respond_to do |format|
      if @order_alignment.save
        format.html { redirect_to @order_alignment, notice: 'Order alignment was successfully created.' }
        format.json { render :show, status: :created, location: @order_alignment }
      else
        format.html { render :new }
        format.json { render json: @order_alignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_alignments/1
  # PATCH/PUT /order_alignments/1.json
  def update
    respond_to do |format|
      if @order_alignment.update(order_alignment_params)
        format.html { redirect_to @order_alignment, notice: 'Order alignment was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_alignment }
      else
        format.html { render :edit }
        format.json { render json: @order_alignment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_alignments/1
  # DELETE /order_alignments/1.json
  def destroy
    @order_alignment.destroy
    respond_to do |format|
      format.html { redirect_to order_alignments_url, notice: 'Order alignment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_alignment
      @order_alignment = OrderAlignment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_alignment_params
      params.require(:order_alignment).permit(:content)
    end
end
