require 'test_helper'

class SeguimientosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:seguimientos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create seguimiento" do
    assert_difference('Seguimiento.count') do
      post :create, :seguimiento => { }
    end

    assert_redirected_to seguimiento_path(assigns(:seguimiento))
  end

  test "should show seguimiento" do
    get :show, :id => seguimientos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => seguimientos(:one).to_param
    assert_response :success
  end

  test "should update seguimiento" do
    put :update, :id => seguimientos(:one).to_param, :seguimiento => { }
    assert_redirected_to seguimiento_path(assigns(:seguimiento))
  end

  test "should destroy seguimiento" do
    assert_difference('Seguimiento.count', -1) do
      delete :destroy, :id => seguimientos(:one).to_param
    end

    assert_redirected_to seguimientos_path
  end
end
