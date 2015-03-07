require 'test/unit'
require_relative 'knight_moves'

class KnightMovesTest < Test::Unit::TestCase
  
  def assert_same_elements(arr1, arr2)
    assert_equal(arr1.length, arr2.length)
    arr1.each do |element|
      assert(arr2.include?(element))
    end
  end
  
  
  def test_on_board?
    assert(on_board?([7, 2]))
    assert(on_board?([5, 2]))
    assert(on_board?([1, 1]))
    assert(on_board?([8, 8]))
    assert(!on_board?([0, 4]))
    assert(!on_board?([3, 9]))
    assert(!on_board?([3, 9]))
  end
  
  def test_to_coordinates
    assert_equal(to_coordinates('g2'), [7, 2])
    assert_equal(to_coordinates('e2'), [5, 2])
    assert_equal(to_coordinates('d4'), [4, 4])
    assert_equal(to_coordinates('a1'), [1, 1])
    assert_equal(to_coordinates('h8'), [8, 8])
  end
  
  def test_to_position
    assert_equal(to_position([7, 2]), 'g2')
    assert_equal(to_position([5, 2]), 'e2')
    assert_equal(to_position([4, 4]), 'd4')
    assert_equal(to_position([1, 1]), 'a1')
    assert_equal(to_position([8, 8]), 'h8')
  end
  
  def test_knight_moves
    assert_same_elements(knight_moves('g2'), %w(e1 e3 f4 h4))
    assert_same_elements(knight_moves('a1'), %w(b3 c2))
    assert_same_elements(knight_moves('d6'), %w(b5 b7 c4 c8 e4 e8 f5 f7))
    assert_same_elements(knight_moves('e5'), %w(c4 c6 d3 d7 f3 f7 g4 g6))
    assert_same_elements(knight_moves('b1'), %w(a3 c3 d2))
  end
  
  def test_all_knight_moves
    assert_same_elements(all_knight_moves([7, 2]), [[9,3], [9,1], [5,3], [5,1], [6,4], [8,4], [6,0], [8,0]])
  end
  

end