require 'test_helper'

class PrevisionTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Prevision.new.valid?
  end
end
