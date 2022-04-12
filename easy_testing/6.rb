require 'minitest/autorun'

class ExceptionTest < MiniTest::Test
  def test_excpetion
    assert_raises(NoExperienceError) { employee.hire }
  end
end