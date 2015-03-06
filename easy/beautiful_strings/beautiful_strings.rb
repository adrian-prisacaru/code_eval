# https://www.codeeval.com/open_challenges/83/

# return a hash with the frequency of each letter
# ignores case and punctuation
def letters_frequency(word)
  word = word.downcase.gsub(/[\W\d_]/, '')
  frequency = {}
  word.each_char do |char|
    frequency[char] ||= 0
    frequency[char] += 1
  end
  return frequency
end

def max_beauty(word)
  frequency = letters_frequency(word)
  beauty = 0
  # give the highest score to the letter with the max frequency
  # and decrease by 1 for each next highest frequency
  score = 26
  frequency.values.sort.reverse.each do |freq|
    beauty += freq * score
    score -= 1
  end
  return beauty
end

def main
  File.open(ARGV[0]) do |f|
    f.each_line do |line|
      puts max_beauty(line)
    end
  end
end

main() if ARGV[0]

