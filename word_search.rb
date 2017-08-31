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


  column1 = puzzle[0][0] + puzzle[1][0] + puzzle[2][0] + puzzle[3][0] + puzzle[4][0] + puzzle[5][0] + puzzle[6][0]

  column2 = puzzle[0][1] + puzzle[1][1] + puzzle[2][1] + puzzle[3][1] + puzzle[4][1] + puzzle[5][1] + puzzle[6][1]

  column3 = puzzle[0][2] + puzzle[1][2] + puzzle[2][2] + puzzle[3][2] + puzzle[4][2] + puzzle[5][2] + puzzle[6][2]

  column4 = puzzle[0][3] + puzzle[1][3] + puzzle[2][3] + puzzle[3][3] + puzzle[4][3] + puzzle[5][3] + puzzle[6][3]

  column5 = puzzle[0][4] + puzzle[1][4] + puzzle[2][4] + puzzle[3][4] + puzzle[4][4] + puzzle[5][4] + puzzle[6][4]

  column4 = puzzle[0][5] + puzzle[1][5] + puzzle[2][5] + puzzle[3][5] + puzzle[4][5] + puzzle[5][5] + puzzle[6][5]

  column6 = puzzle[0][6] + puzzle[1][6] + puzzle[2][6] + puzzle[3][6] + puzzle[4][6] + puzzle[5][6] + puzzle[6][6]

  index = 0
  until index == puzzle.length - 1
    puzzle[index] = puzzle[index].join("")
    if puzzle[index].include?(word)
      return true
      exit
    elsif column1.include?(word) || column2.include?(word) || column3.include?(word) || column4.include?(word) || column5.include?(word) || column6.include?(word)
      return true
      exit
    end
  return false
  end
end
straight_line_include?("zsbnuir", puzzle = [
  ["a", "w", "o", "l", "v", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "h", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
  ])


def snaking_include?(word, puzzle)
end
