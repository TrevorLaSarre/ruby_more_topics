require 'minitest/autorun'

class KindTest < MiniTest::Test
  def setup
    @value = 4
  end
  
  def test_numeric_kind
    assert_kind_of(Numeric, @value)
  end
end