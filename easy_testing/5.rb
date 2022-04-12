require 'minitest/autorun'

class IncludeTest < MiniTest::Test
  def setup
    @list = ['abc', 'hij', 'xyz']
  end
  
  def test_include_xyz
    assert_includes(@list, 'xyz')
  end
end