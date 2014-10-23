require 'test_helper'

class PeerAlliesControllerTest < ActionController::TestCase
  setup do
    @peer_ally = peer_allies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:peer_allies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create peer_ally" do
    assert_difference('PeerAlly.count') do
      post :create, peer_ally: {  }
    end

    assert_redirected_to peer_ally_path(assigns(:peer_ally))
  end

  test "should show peer_ally" do
    get :show, id: @peer_ally
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @peer_ally
    assert_response :success
  end

  test "should update peer_ally" do
    put :update, id: @peer_ally, peer_ally: {  }
    assert_redirected_to peer_ally_path(assigns(:peer_ally))
  end

  test "should destroy peer_ally" do
    assert_difference('PeerAlly.count', -1) do
      delete :destroy, id: @peer_ally
    end

    assert_redirected_to peer_allies_path
  end
end
