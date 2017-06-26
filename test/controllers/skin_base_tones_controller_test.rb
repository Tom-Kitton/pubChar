require 'test_helper'

class SkinBaseTonesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @skin_base_tone = skin_base_tones(:one)
  end

  test "should get index" do
    get skin_base_tones_url
    assert_response :success
  end

  test "should get new" do
    get new_skin_base_tone_url
    assert_response :success
  end

  test "should create skin_base_tone" do
    assert_difference('SkinBaseTone.count') do
      post skin_base_tones_url, params: { skin_base_tone: { content: @skin_base_tone.content } }
    end

    assert_redirected_to skin_base_tone_url(SkinBaseTone.last)
  end

  test "should show skin_base_tone" do
    get skin_base_tone_url(@skin_base_tone)
    assert_response :success
  end

  test "should get edit" do
    get edit_skin_base_tone_url(@skin_base_tone)
    assert_response :success
  end

  test "should update skin_base_tone" do
    patch skin_base_tone_url(@skin_base_tone), params: { skin_base_tone: { content: @skin_base_tone.content } }
    assert_redirected_to skin_base_tone_url(@skin_base_tone)
  end

  test "should destroy skin_base_tone" do
    assert_difference('SkinBaseTone.count', -1) do
      delete skin_base_tone_url(@skin_base_tone)
    end

    assert_redirected_to skin_base_tones_url
  end
end
