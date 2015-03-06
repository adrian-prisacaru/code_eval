# https://www.codeeval.com/browse/1/

import sys

def fizz_buzz(fizz, buzz, number):
    if number % fizz == 0 and number % buzz == 0:
        return 'FB'
    elif number % fizz == 0:
        return 'F'
    elif number % buzz == 0:
        return 'B'
    else:
        return str(number)
    
def fizz_buzz_sequence(fizz, buzz, N):
    sequence = []
    for n in range(1, N+1):
        sequence.append(fizz_buzz(fizz, buzz, n))
    return sequence
    
    
if __name__ == '__main__':
    with open(sys.argv[1]) as input_file:
        for line in input_file:
            print(' '.join(fizz_buzz_sequence(*map(lambda x: int(x), line.split()))))
