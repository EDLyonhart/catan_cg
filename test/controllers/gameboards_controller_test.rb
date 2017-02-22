require 'test_helper'

class GameboardsControllerTest < ActionDispatch::IntegrationTest

  def setup
    @gameboard = gameboards(:one)  
  end

  test "should get new" do
    get new_gameboard_path
    assert_response :success
  end

  test "should get create" do
    get gameboard_path(@gameboard.id)
    assert_response :success
  end

  test "should get update" do
    get gameboard_path(@gameboard.id)
    assert_response :success
  end

  test "should get show" do
    get gameboard_path(@gameboard.id)
    assert_response :success
  end

end
