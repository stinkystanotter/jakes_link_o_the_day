require 'test_helper'

class Topic2sControllerTest < ActionController::TestCase
  setup do
    @topic2 = topic2s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topic2s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topic2" do
    assert_difference('Topic2.count') do
      post :create, topic2: @topic2.attributes
    end

    assert_redirected_to topic2_path(assigns(:topic2))
  end

  test "should show topic2" do
    get :show, id: @topic2
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topic2
    assert_response :success
  end

  test "should update topic2" do
    put :update, id: @topic2, topic2: @topic2.attributes
    assert_redirected_to topic2_path(assigns(:topic2))
  end

  test "should destroy topic2" do
    assert_difference('Topic2.count', -1) do
      delete :destroy, id: @topic2
    end

    assert_redirected_to topic2s_path
  end
end
