var p = require('../prime_palindrome');

describe("is_palindrome", function(){
  it('should return true for even palindromes', function(){
    expect(p.is_palindrome(1001)).toBe(true);
  })
  
  it('it should return true for odd palindormes', function(){
    expect(p.is_palindrome(101)).toBe(true);
  })
  
  it('should return false for even non palindrome numbers', function(){
    expect(p.is_palindrome(1021)).toBe(false);
  })
  
  it('should return false for even non palindrome numbers', function(){
    expect(p.is_palindrome(123)).toBe(false);
  })
  
  it('should return true for 929', function(){
    expect(p.is_palindrome(929)).toBe(true);
  })
})

describe("is_prime", function(){
  it('should return true for prime numbers', function(){
    expect(p.is_prime(3)).toBe(true);
    expect(p.is_prime(7)).toBe(true);
    expect(p.is_prime(13)).toBe(true);
    expect(p.is_prime(17)).toBe(true);
  })
  
  it('should return false for non prime numbers', function(){
    expect(p.is_prime(4)).toBe(false);
    expect(p.is_prime(6)).toBe(false);
    expect(p.is_prime(14)).toBe(false);
    expect(p.is_prime(15)).toBe(false);
  })
  
  it('should return true for 929', function(){
    expect(p.is_prime(929)).toBe(true);
  })
})

describe("find", function(){
  it("should return the largest prime palindrome less than 1000", function(){
    expect(p.find()).toBe(929);
  })
})