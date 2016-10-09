require('minitest/autorun')
require('minitest/rg')
require_relative('../guests')


class TestGuest < MiniTest::Test

  def setup

    @guest1 = Guests.new("Carrie")
    @guest2 = Guests.new("Cas")
    @guest3 = Guests.new("Granny")
    @guest4 = Guests.new("Grandpa")
  end

  def test_guest_has_name
    assert_equal("Carrie", @guest1.name) 
  end

  end





  

  

