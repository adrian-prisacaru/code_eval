# https://www.codeeval.com/browse/52/

# start the array with empty string to handle numbers with last digit 0
DIGITS = %W(#{''} One Two Three Four Five Six Seven Eight Nine)

NUMBERS_10_19 = %W(Ten Eleven Twelve Thirteen Fourteen Fifteen Sixteen Seventeen Eighteen Nineteen)
TENS = %W(Twenty Thirty Forty Fifty Sixty Seventy Eighty Ninety)

def pluralize_dollars(number)
  if number == 1
    'Dollar'
  else
    'Dollars'
  end
end

def digits_1(number)
  DIGITS[number]
end

def digits_2(number)
  if number < 20
    NUMBERS_10_19[number - 10]
  else
    TENS[number / 10 - 2] + digits_1(number % 10)
  end  
end

def digits_3(number)
  digits_1(number / 100).to_s + 'Hundred' + digits(number % 100)
end

def digits_4(number)
  digits_1(number / 1000).to_s + 'Thousand' + digits(number % 1000)
end

def digits_5(number)
  digits_2(number / 1000) + 'Thousand' + digits(number % 1000)
end

def digits_6(number)
  digits_3(number / 1000) + 'Thousand' + digits(number % 1000)
end

def digits_7(number)
  digits_1(number / 1000000) + 'Million' + digits(number % 1000000)
end

def digits_8(number)
  digits_2(number / 1000000) + 'Million' + digits(number % 1000000)
end

def digits_9(number)
  digits_3(number / 1000000) + 'Million' + digits(number % 1000000)
end


# maps a number to the function that handles it's number of digits
def digits(number)
  send('digits_' + number.to_s.length.to_s, number)
end


def text_dollar(number_string)
  number = number_string.to_i
  (number > 0 ? digits(number) : 'Zero') + pluralize_dollars(number)
end


def main
  File.open(ARGV[0]) do |f|
    f.each_line do |line|
      puts text_dollar(line)
    end
  end
end

main if ARGV[0]
