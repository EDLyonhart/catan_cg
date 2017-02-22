require 'test_helper'
require 'pry'

class GamesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @game = games(:one)
  end

  test "should get new" do
    get new_game_path
    assert_response :success
  end

  test "should get create" do
    get games_path(@game.id)
    assert_response :success
  end

  test "should get update" do
    get game_path(@game.id)
    assert_response :success
  end

  test "should get show" do
    get games_path(@game.id)
    assert_response :success
  end

end
