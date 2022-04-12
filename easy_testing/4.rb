require 'minitest/autorun'

class EmptyTest < MiniTest::Test
  def setup
    @list = []
  end
  
  def test_empty
    assert_empty(@list)
  end
end