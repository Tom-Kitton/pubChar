require 'test_helper'

class EyeColoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eye_colour = eye_colours(:one)
  end

  test "should get index" do
    get eye_colours_url
    assert_response :success
  end

  test "should get new" do
    get new_eye_colour_url
    assert_response :success
  end

  test "should create eye_colour" do
    assert_difference('EyeColour.count') do
      post eye_colours_url, params: { eye_colour: { content: @eye_colour.content } }
    end

    assert_redirected_to eye_colour_url(EyeColour.last)
  end

  test "should show eye_colour" do
    get eye_colour_url(@eye_colour)
    assert_response :success
  end

  test "should get edit" do
    get edit_eye_colour_url(@eye_colour)
    assert_response :success
  end

  test "should update eye_colour" do
    patch eye_colour_url(@eye_colour), params: { eye_colour: { content: @eye_colour.content } }
    assert_redirected_to eye_colour_url(@eye_colour)
  end

  test "should destroy eye_colour" do
    assert_difference('EyeColour.count', -1) do
      delete eye_colour_url(@eye_colour)
    end

    assert_redirected_to eye_colours_url
  end
end
