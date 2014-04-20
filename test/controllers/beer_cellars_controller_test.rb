require 'test_helper'

class BeerCellarsControllerTest < ActionController::TestCase
  setup do
    @beer_cellar = beer_cellars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beer_cellars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beer_cellar" do
    assert_difference('BeerCellar.count') do
      post :create, beer_cellar: { flags: @beer_cellar.flags, name: @beer_cellar.name, user_id: @beer_cellar.user_id }
    end

    assert_redirected_to beer_cellar_path(assigns(:beer_cellar))
  end

  test "should show beer_cellar" do
    get :show, id: @beer_cellar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beer_cellar
    assert_response :success
  end

  test "should update beer_cellar" do
    patch :update, id: @beer_cellar, beer_cellar: { flags: @beer_cellar.flags, name: @beer_cellar.name, user_id: @beer_cellar.user_id }
    assert_redirected_to beer_cellar_path(assigns(:beer_cellar))
  end

  test "should destroy beer_cellar" do
    assert_difference('BeerCellar.count', -1) do
      delete :destroy, id: @beer_cellar
    end

    assert_redirected_to beer_cellars_path
  end
end
