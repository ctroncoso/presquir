require 'test_helper'

class TipoPacientesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => TipoPaciente.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    TipoPaciente.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end
  
  def test_create_valid
    TipoPaciente.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to tipo_paciente_url(assigns(:tipo_paciente))
  end
  
  def test_edit
    get :edit, :id => TipoPaciente.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    TipoPaciente.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TipoPaciente.first
    assert_template 'edit'
  end
  
  def test_update_valid
    TipoPaciente.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TipoPaciente.first
    assert_redirected_to tipo_paciente_url(assigns(:tipo_paciente))
  end
  
  def test_destroy
    tipo_paciente = TipoPaciente.first
    delete :destroy, :id => tipo_paciente
    assert_redirected_to tipo_pacientes_url
    assert !TipoPaciente.exists?(tipo_paciente.id)
  end
end
