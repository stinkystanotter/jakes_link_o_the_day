require 'test_helper'

class JakeslinksControllerTest < ActionController::TestCase
  setup do
    @jakeslink = jakeslinks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jakeslinks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jakeslink" do
    assert_difference('Jakeslink.count') do
      post :create, jakeslink: @jakeslink.attributes
    end

    assert_redirected_to jakeslink_path(assigns(:jakeslink))
  end

  test "should show jakeslink" do
    get :show, id: @jakeslink
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jakeslink
    assert_response :success
  end

  test "should update jakeslink" do
    put :update, id: @jakeslink, jakeslink: @jakeslink.attributes
    assert_redirected_to jakeslink_path(assigns(:jakeslink))
  end

  test "should destroy jakeslink" do
    assert_difference('Jakeslink.count', -1) do
      delete :destroy, id: @jakeslink
    end

    assert_redirected_to jakeslinks_path
  end
end
