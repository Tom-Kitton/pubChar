class LastnamesController < ApplicationController
  before_action :set_lastname, only: [:show, :edit, :update, :destroy]

  # GET /lastnames
  # GET /lastnames.json
  def index
    @lastnames = Lastname.all
  end

  # GET /lastnames/1
  # GET /lastnames/1.json
  def show
  end

  # GET /lastnames/new
  def new
    @lastname = Lastname.new
  end

  # GET /lastnames/1/edit
  def edit
  end

  # POST /lastnames
  # POST /lastnames.json
  def create
    @lastname = Lastname.new(lastname_params)

    respond_to do |format|
      if @lastname.save
        format.html { redirect_to @lastname, notice: 'Lastname was successfully created.' }
        format.json { render :show, status: :created, location: @lastname }
      else
        format.html { render :new }
        format.json { render json: @lastname.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lastnames/1
  # PATCH/PUT /lastnames/1.json
  def update
    respond_to do |format|
      if @lastname.update(lastname_params)
        format.html { redirect_to @lastname, notice: 'Lastname was successfully updated.' }
        format.json { render :show, status: :ok, location: @lastname }
      else
        format.html { render :edit }
        format.json { render json: @lastname.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lastnames/1
  # DELETE /lastnames/1.json
  def destroy
    @lastname.destroy
    respond_to do |format|
      format.html { redirect_to lastnames_url, notice: 'Lastname was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lastname
      @lastname = Lastname.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lastname_params
      params.require(:lastname).permit(:content)
    end
end
