require 'test_helper'

class EjecutivaTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Ejecutiva.new.valid?
  end
end
