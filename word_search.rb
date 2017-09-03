  #Check to see if a word is present in the puzzle (word search). Divide up the puzzle into rows and columns and see if the word is present using .include?
#Rows are puzzle[index].join('')
#Columns are ?? index of puzzle row and then individual letter

def straight_line_include?(word, puzzle)
   puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    if search_row(word, puzzle) || search_column(word, puzzle) || search_diagonal(word, puzzle)
      return true
    end
    return false
end

#Helper Methods
def search_row(word, puzzle)
  puzzle.each do |row|
    if row.join.include?(word) || row.join.include?(word.reverse)
      return true
    end
  end
  return false
end

def search_column(word, puzzle)
 p puzzle = puzzle.transpose
   puzzle.each do |column|
    if column.join.include?(word) || column.join.include?(word.reverse)
      return true
    end
  end
  return false
end

def search_diagonal(word, puzzle)
  puzzle = puzzle.transpose.rotate(1)
  puzzle.each do |diagonal|
    if diagonal.join.include?(word) || diagonal.join.include?(word.reverse)
      return true
    end
  end
  return false
end

def snaking_include?(word, puzzle)
end