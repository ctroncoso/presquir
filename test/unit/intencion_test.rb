require 'test_helper'

class IntencionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Intencion.new.valid?
  end
end
