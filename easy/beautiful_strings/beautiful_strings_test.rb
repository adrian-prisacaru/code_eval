require 'test/unit'
require_relative 'beautiful_strings'

class BeautifulStringTest < Test::Unit::TestCase
  
  def test_find_max_beauty
    assert_equal(max_beauty('ABbCcc'), 152)
    assert_equal(max_beauty('Good luck in the Facebook Hacker Cup this year!'), 754)
    assert_equal(max_beauty('Ignore punctuation, please :)'), 491)
    assert_equal(max_beauty('Sometimes test cases are hard to make up.'), 729)
    assert_equal(max_beauty('So I just go consult Professor Dalves'), 646)
  end
  
  def test_letters_frequency
    word = 'ABb Ccc!'
    frequency = letters_frequency(word)
    assert_equal(frequency['a'], 1)
    assert_equal(frequency['b'], 2)
    assert_equal(frequency['c'], 3)
    assert(!frequency.key?('A'))
    assert(!frequency.key?('!'))
    assert(!frequency.key?(' '))
  end
  
  def test_ignore_numbers
    assert_equal(max_beauty('ABb2Ccc'), 152)
  end

end