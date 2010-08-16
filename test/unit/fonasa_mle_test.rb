require 'test_helper'

class FonasaMleTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert FonasaMle.new.valid?
  end
end
