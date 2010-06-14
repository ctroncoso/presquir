require 'test_helper'

class CarterasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Cartera.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Cartera.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Cartera.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to cartera_url(assigns(:cartera))
  end
  
  def test_edit
    get :edit, :id => Cartera.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Cartera.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Cartera.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Cartera.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Cartera.first
    assert_redirected_to cartera_url(assigns(:cartera))
  end
  
  def test_destroy
    cartera = Cartera.first
    delete :destroy, :id => cartera
    assert_redirected_to carteras_url
    assert !Cartera.exists?(cartera.id)
  end
end
