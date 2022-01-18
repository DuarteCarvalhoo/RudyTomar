require "test_helper"

class TablefriendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tablefriend = tablefriends(:one)
  end

  test "should get index" do
    get tablefriends_url
    assert_response :success
  end

  test "should get new" do
    get new_tablefriend_url
    assert_response :success
  end

  test "should create tablefriend" do
    assert_difference("Tablefriend.count") do
      post tablefriends_url, params: { tablefriend: { email: @tablefriend.email, first_name: @tablefriend.first_name, last_name: @tablefriend.last_name, phone: @tablefriend.phone, twitter: @tablefriend.twitter } }
    end

    assert_redirected_to tablefriend_url(Tablefriend.last)
  end

  test "should show tablefriend" do
    get tablefriend_url(@tablefriend)
    assert_response :success
  end

  test "should get edit" do
    get edit_tablefriend_url(@tablefriend)
    assert_response :success
  end

  test "should update tablefriend" do
    patch tablefriend_url(@tablefriend), params: { tablefriend: { email: @tablefriend.email, first_name: @tablefriend.first_name, last_name: @tablefriend.last_name, phone: @tablefriend.phone, twitter: @tablefriend.twitter } }
    assert_redirected_to tablefriend_url(@tablefriend)
  end

  test "should destroy tablefriend" do
    assert_difference("Tablefriend.count", -1) do
      delete tablefriend_url(@tablefriend)
    end

    assert_redirected_to tablefriends_url
  end
end
