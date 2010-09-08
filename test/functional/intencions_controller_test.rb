require 'test_helper'

class IntencionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Intencion.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Intencion.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Intencion.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to intencion_url(assigns(:intencion))
  end
  
  def test_edit
    get :edit, :id => Intencion.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Intencion.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Intencion.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Intencion.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Intencion.first
    assert_redirected_to intencion_url(assigns(:intencion))
  end
  
  def test_destroy
    intencion = Intencion.first
    delete :destroy, :id => intencion
    assert_redirected_to intencions_url
    assert !Intencion.exists?(intencion.id)
  end
end
