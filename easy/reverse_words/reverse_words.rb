# https://www.codeeval.com/open_challenges/8/

def reverse_words(sentence)
  sentence.split(' ').reverse.join(' ')
end

def main
  File.open(ARGV[0]) do |f|
    f.each_line do |line|
      puts reverse_words(line) unless line.gsub(/\s/, '').empty?
    end
  end
end

main() if ARGV[0]
