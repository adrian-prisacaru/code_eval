# https://www.codeeval.com/browse/4/

# divide the next number by all the previously found prime numbers
def prime(next_number, primes)
  primes.each do |prime|
    return false if next_number % prime == 0
  end
  return true
end

def add_next_prime_number(primes)
  next_number = primes[-1] + 1
  while !prime(next_number, primes)
    next_number += 1
  end
  primes << next_number
end

def prime_numbers
  # start with the first prime number
  primes = [2]
  # find the rest of the prime numbers
   (2..1000).each do |i|
    add_next_prime_number(primes)
  end
   return primes
end

def sum_of_primes
  primes = prime_numbers
  primes.reduce(:+)
end

puts sum_of_primes
