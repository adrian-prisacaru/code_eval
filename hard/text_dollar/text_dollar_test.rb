require 'test/unit'
require_relative 'text_dollar'
require 'debugger'

class TextDollarTest < Test::Unit::TestCase
  
  def test_digits
    assert_equal(text_dollar('0'), 'ZeroDollars')
    assert_equal(text_dollar('1'), 'OneDollar')
    assert_equal(text_dollar('3'), 'ThreeDollars')
    assert_equal(text_dollar('6'), 'SixDollars')
    assert_equal(text_dollar('9'), 'NineDollars')
  end
  
  def test_11_19
    assert_equal(text_dollar('10'), 'TenDollars')
    assert_equal(text_dollar('11'), 'ElevenDollars')
    assert_equal(text_dollar('17'), 'SeventeenDollars')
    assert_equal(text_dollar('19'), 'NineteenDollars')
  end
  
  def test_20_99
    assert_equal(text_dollar('20'), 'TwentyDollars')
    assert_equal(text_dollar('24'), 'TwentyFourDollars')
    assert_equal(text_dollar('40'), 'FortyDollars')
    assert_equal(text_dollar('89'), 'EightyNineDollars')
  end
  
  def test_hundreds
    assert_equal(text_dollar('100'), 'OneHundredDollars')
    assert_equal(text_dollar('101'), 'OneHundredOneDollars')
    assert_equal(text_dollar('340'), 'ThreeHundredFortyDollars')
    assert_equal(text_dollar('621'), 'SixHundredTwentyOneDollars')
  end
  
  def test_thousands
    assert_equal(text_dollar('1000'), 'OneThousandDollars')
    assert_equal(text_dollar('3001'), 'ThreeThousandOneDollars')
    assert_equal(text_dollar('6032'), 'SixThousandThirtyTwoDollars')
    assert_equal(text_dollar('7891'), 'SevenThousandEightHundredNinetyOneDollars')
    assert_equal(text_dollar('5200'), 'FiveThousandTwoHundredDollars')
  end
  
  def test_ten_thousands
    assert_equal(text_dollar('10000'), 'TenThousandDollars')
    assert_equal(text_dollar('15300'), 'FifteenThousandThreeHundredDollars')
    assert_equal(text_dollar('80001'), 'EightyThousandOneDollars')
    assert_equal(text_dollar('73013'), 'SeventyThreeThousandThirteenDollars')
  end
  
  def test_hundred_thousands
    assert_equal(text_dollar('100000'), 'OneHundredThousandDollars')
    assert_equal(text_dollar('230001'), 'TwoHundredThirtyThousandOneDollars')
    assert_equal(text_dollar('506263'), 'FiveHundredSixThousandTwoHundredSixtyThreeDollars')
  end
  
  def test_millions
    assert_equal(text_dollar('1000000'), 'OneMillionDollars')
    assert_equal(text_dollar('1625341'), 'OneMillionSixHundredTwentyFiveThousandThreeHundredFortyOneDollars')
  end
  
  def test_ten_millions
    assert_equal(text_dollar('11625341'), 'ElevenMillionSixHundredTwentyFiveThousandThreeHundredFortyOneDollars')
  end
  
  def test_hundred_millions
    assert_equal(text_dollar('311625341'), 'ThreeHundredElevenMillionSixHundredTwentyFiveThousandThreeHundredFortyOneDollars')
  end
end