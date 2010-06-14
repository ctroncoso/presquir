require 'test_helper'

class CarteraTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Cartera.new.valid?
  end
end
