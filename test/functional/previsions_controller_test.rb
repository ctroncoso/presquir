require 'test_helper'

class PrevisionsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Prevision.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Prevision.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Prevision.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to prevision_url(assigns(:prevision))
  end
  
  def test_edit
    get :edit, :id => Prevision.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Prevision.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Prevision.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Prevision.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Prevision.first
    assert_redirected_to prevision_url(assigns(:prevision))
  end
  
  def test_destroy
    prevision = Prevision.first
    delete :destroy, :id => prevision
    assert_redirected_to previsions_url
    assert !Prevision.exists?(prevision.id)
  end
end
