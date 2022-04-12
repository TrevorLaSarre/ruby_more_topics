require 'minitest/autorun'

class RefuteTest < MiniTest::Test
  def setup
    @list = [1, 2, 3]
  end
  
  def test_refute_includes
    refute_includes(@list, 'xyz')
  end
end