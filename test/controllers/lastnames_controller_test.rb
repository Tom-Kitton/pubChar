require 'test_helper'

class LastnamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lastname = lastnames(:one)
  end

  test "should get index" do
    get lastnames_url
    assert_response :success
  end

  test "should get new" do
    get new_lastname_url
    assert_response :success
  end

  test "should create lastname" do
    assert_difference('Lastname.count') do
      post lastnames_url, params: { lastname: { content: @lastname.content } }
    end

    assert_redirected_to lastname_url(Lastname.last)
  end

  test "should show lastname" do
    get lastname_url(@lastname)
    assert_response :success
  end

  test "should get edit" do
    get edit_lastname_url(@lastname)
    assert_response :success
  end

  test "should update lastname" do
    patch lastname_url(@lastname), params: { lastname: { content: @lastname.content } }
    assert_redirected_to lastname_url(@lastname)
  end

  test "should destroy lastname" do
    assert_difference('Lastname.count', -1) do
      delete lastname_url(@lastname)
    end

    assert_redirected_to lastnames_url
  end
end
