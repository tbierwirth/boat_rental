require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/boat'

class BoatTest < MiniTest::Test

  def setup
    @kayak = Boat.new(:kayak, 20)
  end

  def test_the_attributes
    assert_equal :kayak, @kayak.type
    assert_equal 20, @kayak.price_per_hour
  end

  def test_hours_rented
    assert_equal 0, @kayak.hours_rented
    @kayak.add_hour
    @kayak.add_hour
    @kayak.add_hour
    assert_equal 3, @kayak.hours_rented
  end

end
