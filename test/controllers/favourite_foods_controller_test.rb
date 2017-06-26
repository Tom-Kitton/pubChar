require 'test_helper'

class FavouriteFoodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @favourite_food = favourite_foods(:one)
  end

  test "should get index" do
    get favourite_foods_url
    assert_response :success
  end

  test "should get new" do
    get new_favourite_food_url
    assert_response :success
  end

  test "should create favourite_food" do
    assert_difference('FavouriteFood.count') do
      post favourite_foods_url, params: { favourite_food: { content: @favourite_food.content } }
    end

    assert_redirected_to favourite_food_url(FavouriteFood.last)
  end

  test "should show favourite_food" do
    get favourite_food_url(@favourite_food)
    assert_response :success
  end

  test "should get edit" do
    get edit_favourite_food_url(@favourite_food)
    assert_response :success
  end

  test "should update favourite_food" do
    patch favourite_food_url(@favourite_food), params: { favourite_food: { content: @favourite_food.content } }
    assert_redirected_to favourite_food_url(@favourite_food)
  end

  test "should destroy favourite_food" do
    assert_difference('FavouriteFood.count', -1) do
      delete favourite_food_url(@favourite_food)
    end

    assert_redirected_to favourite_foods_url
  end
end
