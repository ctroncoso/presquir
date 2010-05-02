require 'test_helper'

class EjecutivasControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Ejecutiva.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Ejecutiva.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Ejecutiva.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to ejecutiva_url(assigns(:ejecutiva))
  end
  
  def test_edit
    get :edit, :id => Ejecutiva.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Ejecutiva.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Ejecutiva.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Ejecutiva.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Ejecutiva.first
    assert_redirected_to ejecutiva_url(assigns(:ejecutiva))
  end
  
  def test_destroy
    ejecutiva = Ejecutiva.first
    delete :destroy, :id => ejecutiva
    assert_redirected_to ejecutivas_url
    assert !Ejecutiva.exists?(ejecutiva.id)
  end
end
