require 'test_helper'

class CharactersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get characters_url
    assert_response :success
  end

  test "should get new" do
    get new_character_url
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post characters_url, params: { character: { age: @character.age, ailment: @character.ailment, ethnicity: @character.ethnicity, eye_colour: @character.eye_colour, favourite_drink: @character.favourite_drink, favourite_food: @character.favourite_food, firstname: @character.firstname, gender: @character.gender, lastname: @character.lastname, moral_alignment: @character.moral_alignment, mother_tongue: @character.mother_tongue, nationality: @character.nationality, obsession: @character.obsession, occupation: @character.occupation, order_alignment: @character.order_alignment, secret_language: @character.secret_language, skin_base_tone: @character.skin_base_tone, star_sign: @character.star_sign } }
    end

    assert_redirected_to character_url(Character.last)
  end

  test "should show character" do
    get character_url(@character)
    assert_response :success
  end

  test "should get edit" do
    get edit_character_url(@character)
    assert_response :success
  end

  test "should update character" do
    patch character_url(@character), params: { character: { age: @character.age, ailment: @character.ailment, ethnicity: @character.ethnicity, eye_colour: @character.eye_colour, favourite_drink: @character.favourite_drink, favourite_food: @character.favourite_food, firstname: @character.firstname, gender: @character.gender, lastname: @character.lastname, moral_alignment: @character.moral_alignment, mother_tongue: @character.mother_tongue, nationality: @character.nationality, obsession: @character.obsession, occupation: @character.occupation, order_alignment: @character.order_alignment, secret_language: @character.secret_language, skin_base_tone: @character.skin_base_tone, star_sign: @character.star_sign } }
    assert_redirected_to character_url(@character)
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete character_url(@character)
    end

    assert_redirected_to characters_url
  end
end
