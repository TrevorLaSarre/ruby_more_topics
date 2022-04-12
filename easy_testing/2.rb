require 'minitest/autorun'

class EqualityTest < Minitest::Test
  def test_downcase_xyz
    string = 'XYZ'
    assert_equal('xyz', string.downcase)
  end
end