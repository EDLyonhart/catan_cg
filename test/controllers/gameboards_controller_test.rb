require 'test_helper'

class GameboardsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get gameboards_new_url
    assert_response :success
  end

  test "should get create" do
    get gameboards_create_url
    assert_response :success
  end

  test "should get update" do
    get gameboards_update_url
    assert_response :success
  end

  test "should get show" do
    get gameboards_show_url
    assert_response :success
  end

end
