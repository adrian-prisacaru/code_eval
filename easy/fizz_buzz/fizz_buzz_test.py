import unittest
from .fizz_buzz.py3 import fizz_buzz, fizz_buzz_sequence

class TestFizzBuzz(unittest.TestCase):
    def test_fizz_buzz(self):
        self.assertEqual(fizz_buzz(2,5,10), 'FB')
        self.assertEqual(fizz_buzz(2,3,9), 'B')
        self.assertEqual(fizz_buzz(2,5,8), 'F')
        self.assertEqual(fizz_buzz(2,5,9), '9')
        
    def test_fizz_buzz_sequence(self):
        self.assertEqual(fizz_buzz_sequence(3,5,10), ['1', '2', 'F', '4', 'B', 'F', '7', '8', 'F', 'B'])
        self.assertEqual(fizz_buzz_sequence(2,7,15), ['1', 'F', '3', 'F', '5', 'F', 'B', 'F', '9', 'F', '11', 'F', '13', 'FB', '15'])
        
if __name__ == '__main__':
    unittest.main()