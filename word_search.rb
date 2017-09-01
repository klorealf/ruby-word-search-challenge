puzzle = [
  ["a", "w", "o", "l", "v", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "h", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
]


def straight_line_include?(word, puzzle)
  check_horizontal?(word, puzzle) || check_vertical?(word, puzzle) || check_diagonal?(word, puzzle)
end

def snaking_include?(word, puzzle)
end

# Helper methods
def check_horizontal?(word, puzzle)
  puzzle.select{ |arr| arr.join.include?(word) || arr.join.reverse.include?(word)}.any?
end

def check_vertical?(word, puzzle)
  puzzle.transpose.select{ |arr| arr.join.include?(word) || arr.join.reverse.include?(word) }.any?
end

def check_diagonal?(word, puzzle)

  starting_letter = word[0]
  starting_points = []
  puzzle.each_index do |i|
    puzzle[i].each_index { |j| starting_points << [i, j] if puzzle[i][j] == starting_letter }
  end
  starting_points.each do |starting_point|
    check = create_diagonal_descending_forward_array(starting_point, word, puzzle) || create_diagonal_descending_backward_array(starting_point, word, puzzle)
    return check if check
  end
  false
end

def create_diagonal_descending_forward_array(starting_point, word, puzzle)
  # descending forward
  n = starting_point[0] <= starting_point[1] ? starting_point[0] : starting_point[1]
  i = starting_point[0] - n
  j = starting_point[1] - n
  arr = []
  while j < puzzle[0].length && i < puzzle.length
    arr << puzzle[i][j]
    i += 1
    j += 1
  end
  arr.join.include?(word) || arr.join.reverse.include?(word)
end

def create_diagonal_descending_backward_array(starting_point, word, puzzle)
    # descending backward
    n = starting_point[0] <= (puzzle[0].length - 1 - starting_point[1]) ? starting_point[0] : (puzzle[0].length - 1 - starting_point[1])
    i = starting_point[0] - n
    j = starting_point[1] + n
    arr = []
    while j >= 0 && i < puzzle.length
      arr << puzzle[i][j]
      i += 1
      j -= 1
    end
    arr.join.include?(word) || arr.join.reverse.include?(word)
end


#Runner Code

#Descending
 p straight_line_include?("otter", puzzle)
#horizontal
 p straight_line_include?("wolves", puzzle)
 #Diagonal
 p straight_line_include?("bison", puzzle)
#Snake