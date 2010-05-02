require 'test_helper'

class PresupuestoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Presupuesto.new.valid?
  end
end
