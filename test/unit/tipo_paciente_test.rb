require 'test_helper'

class TipoPacienteTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TipoPaciente.new.valid?
  end
end
