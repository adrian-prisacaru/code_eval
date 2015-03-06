require 'test/unit'
require_relative 'sum_of_primes'
require 'debugger'

class SumOfPrimesTest < Test::Unit::TestCase
  
  def test_prime
    assert(!prime(10, [2,3,5,7]))
    assert(prime(11, [2,3,5,7]))
  end
  
  def test_next_prime_number
    primes = [2,3,5,7,11]
    add_next_prime_number(primes)
    assert_equal(primes, [2,3,5,7,11,13])
  end
  
  
  def test_prime_numbers
    primes = prime_numbers
    assert(primes.include?(3))
    assert(primes.include?(7))
    assert(primes.include?(13))
    assert(primes.include?(17))
    assert(primes.include?(929))
    assert(!primes.include?(4))
    assert(!primes.include?(21))
    assert(!primes.include?(100))
    assert_equal(primes.length, 1000)
  end
  
  def test_sum_of_primes
    assert_equal(sum_of_primes, 3682913)
  end

end
