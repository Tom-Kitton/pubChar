require 'test_helper'

class MotherTonguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mother_tongue = mother_tongues(:one)
  end

  test "should get index" do
    get mother_tongues_url
    assert_response :success
  end

  test "should get new" do
    get new_mother_tongue_url
    assert_response :success
  end

  test "should create mother_tongue" do
    assert_difference('MotherTongue.count') do
      post mother_tongues_url, params: { mother_tongue: { content: @mother_tongue.content } }
    end

    assert_redirected_to mother_tongue_url(MotherTongue.last)
  end

  test "should show mother_tongue" do
    get mother_tongue_url(@mother_tongue)
    assert_response :success
  end

  test "should get edit" do
    get edit_mother_tongue_url(@mother_tongue)
    assert_response :success
  end

  test "should update mother_tongue" do
    patch mother_tongue_url(@mother_tongue), params: { mother_tongue: { content: @mother_tongue.content } }
    assert_redirected_to mother_tongue_url(@mother_tongue)
  end

  test "should destroy mother_tongue" do
    assert_difference('MotherTongue.count', -1) do
      delete mother_tongue_url(@mother_tongue)
    end

    assert_redirected_to mother_tongues_url
  end
end
