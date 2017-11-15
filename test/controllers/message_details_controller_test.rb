require 'test_helper'

class MessageDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @message_detail = message_details(:one)
  end

  test "should get index" do
    get message_details_url
    assert_response :success
  end

  test "should get new" do
    get new_message_detail_url
    assert_response :success
  end

  test "should create message_detail" do
    assert_difference('MessageDetail.count') do
      post message_details_url, params: { message_detail: {  } }
    end

    assert_redirected_to message_detail_url(MessageDetail.last)
  end

  test "should show message_detail" do
    get message_detail_url(@message_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_message_detail_url(@message_detail)
    assert_response :success
  end

  test "should update message_detail" do
    patch message_detail_url(@message_detail), params: { message_detail: {  } }
    assert_redirected_to message_detail_url(@message_detail)
  end

  test "should destroy message_detail" do
    assert_difference('MessageDetail.count', -1) do
      delete message_detail_url(@message_detail)
    end

    assert_redirected_to message_details_url
  end
end
