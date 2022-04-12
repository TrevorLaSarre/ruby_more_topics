require 'minitest/autorun'

class InstanceTest < MiniTest::Test
  def setup
    @value = Numeric.new
  end
  
  def test_numeric_instance
    assert_instance_of(Numeric, @value)
  end
end