require 'test_helper'

class BottlesControllerTest < ActionController::TestCase
  setup do
    @bottle = bottles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bottles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bottle" do
    assert_difference('Bottle.count') do
      post :create, bottle: { acquired: @bottle.acquired, beer_id: @bottle.beer_id, consumed: @bottle.consumed, container_id: @bottle.container_id, container_type: @bottle.container_type, user_id: @bottle.user_id }
    end

    assert_redirected_to bottle_path(assigns(:bottle))
  end

  test "should show bottle" do
    get :show, id: @bottle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bottle
    assert_response :success
  end

  test "should update bottle" do
    patch :update, id: @bottle, bottle: { acquired: @bottle.acquired, beer_id: @bottle.beer_id, consumed: @bottle.consumed, container_id: @bottle.container_id, container_type: @bottle.container_type, user_id: @bottle.user_id }
    assert_redirected_to bottle_path(assigns(:bottle))
  end

  test "should destroy bottle" do
    assert_difference('Bottle.count', -1) do
      delete :destroy, id: @bottle
    end

    assert_redirected_to bottles_path
  end
end
