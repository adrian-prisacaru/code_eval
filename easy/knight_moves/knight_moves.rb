# https://www.codeeval.com/open_challenges/180/

COLUMNS = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']

def on_board?(coordinates)
  coordinates.each do |c|
    return false if c < 1 || c > 8
  end
end

def to_coordinates(position)
  position = position.split('')
  position[0] = COLUMNS.index(position[0]) + 1
  position[1] = position[1].to_i
  return position
end

def to_position(coordinates)
  coordinates[1] = coordinates[1].to_s
  coordinates[0] = COLUMNS[coordinates[0] - 1]
  coordinates.join('')
end

def knight_moves(position)
  moves = all_knight_moves(to_coordinates(position)).select {|c| on_board?(c)}
  moves.map {|move| to_position(move)}.sort
end

def all_knight_moves(coordinates)
  result = []
  result << [coordinates[0] + 2, coordinates[1] - 1]
  result << [coordinates[0] + 2, coordinates[1] + 1]
  result << [coordinates[0] - 2, coordinates[1] - 1]
  result << [coordinates[0] - 2, coordinates[1] + 1]
  result << [coordinates[0] - 1, coordinates[1] + 2]
  result << [coordinates[0] + 1, coordinates[1] + 2]
  result << [coordinates[0] - 1, coordinates[1] - 2]
  result << [coordinates[0] + 1, coordinates[1] - 2]
end

def main
  File.open(ARGV[0]) do |f|
    f.each_line do |line|
      print knight_moves(line.chomp).join(' ')
      puts
    end
  end
end

main if ARGV[0]
