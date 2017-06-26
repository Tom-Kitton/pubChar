class SecretLanguagesController < ApplicationController
  before_action :set_secret_language, only: [:show, :edit, :update, :destroy]

  # GET /secret_languages
  # GET /secret_languages.json
  def index
    @secret_languages = SecretLanguage.all
  end

  # GET /secret_languages/1
  # GET /secret_languages/1.json
  def show
  end

  # GET /secret_languages/new
  def new
    @secret_language = SecretLanguage.new
  end

  # GET /secret_languages/1/edit
  def edit
  end

  # POST /secret_languages
  # POST /secret_languages.json
  def create
    @secret_language = SecretLanguage.new(secret_language_params)

    respond_to do |format|
      if @secret_language.save
        format.html { redirect_to @secret_language, notice: 'Secret language was successfully created.' }
        format.json { render :show, status: :created, location: @secret_language }
      else
        format.html { render :new }
        format.json { render json: @secret_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /secret_languages/1
  # PATCH/PUT /secret_languages/1.json
  def update
    respond_to do |format|
      if @secret_language.update(secret_language_params)
        format.html { redirect_to @secret_language, notice: 'Secret language was successfully updated.' }
        format.json { render :show, status: :ok, location: @secret_language }
      else
        format.html { render :edit }
        format.json { render json: @secret_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /secret_languages/1
  # DELETE /secret_languages/1.json
  def destroy
    @secret_language.destroy
    respond_to do |format|
      format.html { redirect_to secret_languages_url, notice: 'Secret language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_secret_language
      @secret_language = SecretLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def secret_language_params
      params.require(:secret_language).permit(:content)
    end
end
