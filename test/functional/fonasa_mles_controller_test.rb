require 'test_helper'

class FonasaMlesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => FonasaMle.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    FonasaMle.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    FonasaMle.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to fonasa_mle_url(assigns(:fonasa_mle))
  end
  
  def test_edit
    get :edit, :id => FonasaMle.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    FonasaMle.any_instance.stubs(:valid?).returns(false)
    put :update, :id => FonasaMle.first
    assert_template 'edit'
  end
  
  def test_update_valid
    FonasaMle.any_instance.stubs(:valid?).returns(true)
    put :update, :id => FonasaMle.first
    assert_redirected_to fonasa_mle_url(assigns(:fonasa_mle))
  end
  
  def test_destroy
    fonasa_mle = FonasaMle.first
    delete :destroy, :id => fonasa_mle
    assert_redirected_to fonasa_mles_url
    assert !FonasaMle.exists?(fonasa_mle.id)
  end
end
