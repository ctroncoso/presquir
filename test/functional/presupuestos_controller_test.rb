require 'test_helper'

class PresupuestosControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Presupuesto.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Presupuesto.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Presupuesto.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to presupuesto_url(assigns(:presupuesto))
  end
  
  def test_edit
    get :edit, :id => Presupuesto.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Presupuesto.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Presupuesto.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Presupuesto.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Presupuesto.first
    assert_redirected_to presupuesto_url(assigns(:presupuesto))
  end
  
  def test_destroy
    presupuesto = Presupuesto.first
    delete :destroy, :id => presupuesto
    assert_redirected_to presupuestos_url
    assert !Presupuesto.exists?(presupuesto.id)
  end
end
