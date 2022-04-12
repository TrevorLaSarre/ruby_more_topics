require 'minitest/autorun'

require_relative 'text_class'

class TextTest < MiniTest::Test
  def setup
    @file = File.open('sample_text.txt')
    @string = @file.read
    @text = Text.new(@string)
  end
  
  def test_swap
    assert_equal(@string.gsub('a', 'e'), @text.swap('a', 'e'))
  end
  
  def test_word_count
    assert_equal(@string.split.count, @text.word_count)
  end
  
  def teardown
   @file.close
  end
end