require 'minitest/autorun'

class TestList
  def process
    self
  end
end

class SameTest < MiniTest::Test
  def setup
    @list = TestList.new
  end
  
  def test_same
    assert_same(@list, @list.process)
  end
end