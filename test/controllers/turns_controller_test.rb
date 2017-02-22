require 'test_helper'

class TurnsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get turns_new_url
    assert_response :success
  end

  test "should get create" do
    get turns_create_url
    assert_response :success
  end

  test "should get update" do
    get turns_update_url
    assert_response :success
  end

end
