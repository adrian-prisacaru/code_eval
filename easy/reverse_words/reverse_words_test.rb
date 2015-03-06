require 'test/unit'
require_relative 'reverse_words'

class ReverseWordsTest < Test::Unit::TestCase
  
  def test_reverse_words
    assert_equal(reverse_words('Hello how are you'), 'you are how Hello')
  end
  
  
end