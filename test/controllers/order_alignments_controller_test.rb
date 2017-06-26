require 'test_helper'

class OrderAlignmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_alignment = order_alignments(:one)
  end

  test "should get index" do
    get order_alignments_url
    assert_response :success
  end

  test "should get new" do
    get new_order_alignment_url
    assert_response :success
  end

  test "should create order_alignment" do
    assert_difference('OrderAlignment.count') do
      post order_alignments_url, params: { order_alignment: { content: @order_alignment.content } }
    end

    assert_redirected_to order_alignment_url(OrderAlignment.last)
  end

  test "should show order_alignment" do
    get order_alignment_url(@order_alignment)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_alignment_url(@order_alignment)
    assert_response :success
  end

  test "should update order_alignment" do
    patch order_alignment_url(@order_alignment), params: { order_alignment: { content: @order_alignment.content } }
    assert_redirected_to order_alignment_url(@order_alignment)
  end

  test "should destroy order_alignment" do
    assert_difference('OrderAlignment.count', -1) do
      delete order_alignment_url(@order_alignment)
    end

    assert_redirected_to order_alignments_url
  end
end
