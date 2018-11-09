require('minitest/autorun')
require('minitest/rg')
require_relative('../models/owner.rb')

class TestOwner < Minitest::Test

  def setup
    @owner = Owner.new()
  end

  def test_can_get_owner_name
    assert_nil (@owner.name = nil)
  end

  def test_can_get_owner_address
    assert_nil (@owner.address = nil)
  end



end
