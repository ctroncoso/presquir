require 'test_helper'

class PacienteTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Paciente.new.valid?
  end
end
