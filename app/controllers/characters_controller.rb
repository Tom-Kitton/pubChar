class CharactersController < ApplicationController
  before_action :set_character, only: [:show, :edit, :update, :destroy]

  # GET /characters
  # GET /characters.json
  def index
    @characters = Character.all
  end

  # GET /characters/1
  # GET /characters/1.json
  def show
  end

  # GET /characters/new
  def new
    @character = Character.new
  end

  # GET /characters/1/edit
  def edit
  end

  # POST /characters
  # POST /characters.json
  def create
    @character = Character.new(character_params)
    populate_character

    respond_to do |format|
      if @character.save
        format.html { redirect_to @character, notice: 'Character was successfully created.' }
        format.json { render :show, status: :created, location: @character }
      else
        format.html { render :new }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /characters/1
  # PATCH/PUT /characters/1.json
  def update
    respond_to do |format|
      if @character.update(character_params)
        format.html { redirect_to @character, notice: 'Character was successfully updated.' }
        format.json { render :show, status: :ok, location: @character }
      else
        format.html { render :edit }
        format.json { render json: @character.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /characters/1
  # DELETE /characters/1.json
  def destroy
    @character.destroy
    respond_to do |format|
      format.html { redirect_to characters_url, notice: 'Character was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def populate_character
    @character.age.nil? ? @character.age = rand(15..100) : @character.age
    @character.ethnicity.empty? ? @character.ethnicity = Ethnicity.all.map(&:content).sample : @character.ethnicity
    @character.nationality.empty? ? @character.nationality = Nationality.all.map(&:content).sample : @character.nationality
    @character.mother_tongue.empty? ? @character.mother_tongue = MotherTongue.all.map(&:content).sample : @character.mother_tongue
    @character.occupation.empty? ? @character.occupation = Occupation.all.map(&:content).sample : @character.occupation
    @character.lastname.empty? ? @character.lastname = Lastname.all.map(&:content).sample : @character.lastname
    @character.firstname.empty? ? @character.firstname = Firstname.all.map(&:content).sample : @character.firstname
    @character.gender.empty? ? @character.gender = Gender.all.map(&:content).sample : @character.gender
    @character.obsession.empty? ? @character.obsession = Obsession.all.map(&:content).sample : @character.obsession
    @character.order_alignment.empty? ? @character.order_alignment = OrderAlignment.all.map(&:content).sample : @character.order_alignment
    @character.secret_language.empty? ? @character.secret_language = SecretLanguage.all.map(&:content).sample : @character.secret_language
    @character.moral_alignment.empty? ? @character.moral_alignment = MoralAlignment.all.map(&:content).sample : @character.moral_alignment
    @character.eye_colour.empty? ? @character.eye_colour = EyeColour.all.map(&:content).sample : @character.eye_colour
    @character.skin_base_tone.empty? ? @character.skin_base_tone = SkinBaseTone.all.map(&:content).sample : @character.skin_base_tone
    @character.favourite_food.empty? ? @character.favourite_food = FavouriteFood.all.map(&:content).sample : @character.favourite_food
    @character.favourite_drink.empty? ? @character.favourite_drink = FavouriteDrink.all.map(&:content).sample : @character.favourite_drink
    @character.ailment.empty? ? @character.ailment = Ailment.all.map(&:content).sample : @character.ailment
    @character.star_sign.empty? ? @character.star_sign = StarSign.all.map(&:content).sample : @character.star_sign
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_character
      @character = Character.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def character_params
      params.require(:character).permit(:age, :ethnicity, :nationality, :mother_tongue, :occupation, :lastname, :firstname, :gender, :obsession, :order_alignment, :secret_language, :moral_alignment, :eye_colour, :skin_base_tone, :favourite_food, :favourite_drink, :ailment, :star_sign)
    end
end
