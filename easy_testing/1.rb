require 'minitest/autorun'

class ExampleTest < MiniTest::Test
  def test_odd
    value = rand(1..20)
    puts value
    assert_equal(true, value.odd?)
  end
end

#Alternative Option

assert(value.odd?, 'value is not odd')