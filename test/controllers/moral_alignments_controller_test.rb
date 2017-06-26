require 'test_helper'

class MoralAlignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @moral_alignment = moral_alignments(:one)
  end

  test "should get index" do
    get moral_alignments_url
    assert_response :success
  end

  test "should get new" do
    get new_moral_alignment_url
    assert_response :success
  end

  test "should create moral_alignment" do
    assert_difference('MoralAlignment.count') do
      post moral_alignments_url, params: { moral_alignment: { content: @moral_alignment.content } }
    end

    assert_redirected_to moral_alignment_url(MoralAlignment.last)
  end

  test "should show moral_alignment" do
    get moral_alignment_url(@moral_alignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_moral_alignment_url(@moral_alignment)
    assert_response :success
  end

  test "should update moral_alignment" do
    patch moral_alignment_url(@moral_alignment), params: { moral_alignment: { content: @moral_alignment.content } }
    assert_redirected_to moral_alignment_url(@moral_alignment)
  end

  test "should destroy moral_alignment" do
    assert_difference('MoralAlignment.count', -1) do
      delete moral_alignment_url(@moral_alignment)
    end

    assert_redirected_to moral_alignments_url
  end
end
