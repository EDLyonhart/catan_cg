require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  setup do
    @user = users(:one)
  end

  test "should get new" do
    get new_user_path
    assert_response :success
  end

  test "should get show" do
    get user_path(@user.id)
    assert_response :success
  end

end
