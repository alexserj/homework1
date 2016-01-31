require 'test_helper'

class FriendsForUsrsControllerTest < ActionController::TestCase
  setup do
    @friends_for_usr = friends_for_usrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friends_for_usrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friends_for_usr" do
    assert_difference('FriendsForUsr.count') do
      post :create, friends_for_usr: { friends: @friends_for_usr.friends }
    end

    assert_redirected_to friends_for_usr_path(assigns(:friends_for_usr))
  end

  test "should show friends_for_usr" do
    get :show, id: @friends_for_usr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friends_for_usr
    assert_response :success
  end

  test "should update friends_for_usr" do
    patch :update, id: @friends_for_usr, friends_for_usr: { friends: @friends_for_usr.friends }
    assert_redirected_to friends_for_usr_path(assigns(:friends_for_usr))
  end

  test "should destroy friends_for_usr" do
    assert_difference('FriendsForUsr.count', -1) do
      delete :destroy, id: @friends_for_usr
    end

    assert_redirected_to friends_for_usrs_path
  end
end
