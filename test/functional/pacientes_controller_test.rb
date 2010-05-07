require 'test_helper'

class PacientesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Paciente.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Paciente.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    Paciente.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to paciente_url(assigns(:paciente))
  end
  
  def test_edit
    get :edit, :id => Paciente.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Paciente.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Paciente.first
    assert_template 'edit'
  end
  
  def test_update_valid
    Paciente.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Paciente.first
    assert_redirected_to paciente_url(assigns(:paciente))
  end
  
  def test_destroy
    paciente = Paciente.first
    delete :destroy, :id => paciente
    assert_redirected_to pacientes_url
    assert !Paciente.exists?(paciente.id)
  end
end
