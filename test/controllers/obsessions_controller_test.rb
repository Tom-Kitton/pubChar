require 'test_helper'

class ObsessionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obsession = obsessions(:one)
  end

  test "should get index" do
    get obsessions_url
    assert_response :success
  end

  test "should get new" do
    get new_obsession_url
    assert_response :success
  end

  test "should create obsession" do
    assert_difference('Obsession.count') do
      post obsessions_url, params: { obsession: { content: @obsession.content } }
    end

    assert_redirected_to obsession_url(Obsession.last)
  end

  test "should show obsession" do
    get obsession_url(@obsession)
    assert_response :success
  end

  test "should get edit" do
    get edit_obsession_url(@obsession)
    assert_response :success
  end

  test "should update obsession" do
    patch obsession_url(@obsession), params: { obsession: { content: @obsession.content } }
    assert_redirected_to obsession_url(@obsession)
  end

  test "should destroy obsession" do
    assert_difference('Obsession.count', -1) do
      delete obsession_url(@obsession)
    end

    assert_redirected_to obsessions_url
  end
end
