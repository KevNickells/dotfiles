require 'minitest/autorun'
require_relative 'module'

class ThingTest < Minitest::Test
  def test_no_matches
    obj = Class.new('param')
    x = obj.method([something])
    expected = []
    assert_equal expected, x
  end
end

