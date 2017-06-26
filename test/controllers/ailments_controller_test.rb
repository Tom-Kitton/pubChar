require 'test_helper'

class AilmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ailment = ailments(:one)
  end

  test "should get index" do
    get ailments_url
    assert_response :success
  end

  test "should get new" do
    get new_ailment_url
    assert_response :success
  end

  test "should create ailment" do
    assert_difference('Ailment.count') do
      post ailments_url, params: { ailment: { content: @ailment.content } }
    end

    assert_redirected_to ailment_url(Ailment.last)
  end

  test "should show ailment" do
    get ailment_url(@ailment)
    assert_response :success
  end

  test "should get edit" do
    get edit_ailment_url(@ailment)
    assert_response :success
  end

  test "should update ailment" do
    patch ailment_url(@ailment), params: { ailment: { content: @ailment.content } }
    assert_redirected_to ailment_url(@ailment)
  end

  test "should destroy ailment" do
    assert_difference('Ailment.count', -1) do
      delete ailment_url(@ailment)
    end

    assert_redirected_to ailments_url
  end
end
