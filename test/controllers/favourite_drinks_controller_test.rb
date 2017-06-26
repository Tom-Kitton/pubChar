require 'test_helper'

class FavouriteDrinksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favourite_drink = favourite_drinks(:one)
  end

  test "should get index" do
    get favourite_drinks_url
    assert_response :success
  end

  test "should get new" do
    get new_favourite_drink_url
    assert_response :success
  end

  test "should create favourite_drink" do
    assert_difference('FavouriteDrink.count') do
      post favourite_drinks_url, params: { favourite_drink: { content: @favourite_drink.content } }
    end

    assert_redirected_to favourite_drink_url(FavouriteDrink.last)
  end

  test "should show favourite_drink" do
    get favourite_drink_url(@favourite_drink)
    assert_response :success
  end

  test "should get edit" do
    get edit_favourite_drink_url(@favourite_drink)
    assert_response :success
  end

  test "should update favourite_drink" do
    patch favourite_drink_url(@favourite_drink), params: { favourite_drink: { content: @favourite_drink.content } }
    assert_redirected_to favourite_drink_url(@favourite_drink)
  end

  test "should destroy favourite_drink" do
    assert_difference('FavouriteDrink.count', -1) do
      delete favourite_drink_url(@favourite_drink)
    end

    assert_redirected_to favourite_drinks_url
  end
end
