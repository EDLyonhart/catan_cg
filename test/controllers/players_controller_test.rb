require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest

  def setup
    @player = players(:one)
  end

  test "should get new" do
    get new_player_path
    assert_response :success
  end

  test "should get create" do
    get players_path(@player.id)
    assert_response :success
  end

  test "should get update" do
    get player_path(@player.id)
    assert_response :success
  end

end
