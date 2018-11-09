require('autorun')
require('minitest/rg')
require_relative('../models/owner.rb')

class TestOwner < Minitest::Test

  def setup
    @owner = Owner.new({
      'name' => 'David Tennant'
      'address' => 'The Tardis' 
      })
  end
