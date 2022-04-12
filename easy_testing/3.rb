require 'minitest/autorun'

class NilTest < Minitest::Test
  def value
    @value = nil
  end
  
  def test_nil
    assert_nil(@value)
  end
end