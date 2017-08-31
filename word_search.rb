puzzle = [
  ["a", "w", "o", "l", "v", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "h", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
]

# p puzzle[0][1..6].join

def straight_line_include?(word, puzzle)
  puzzle.each do |letters|
    if puzzle[0][1..6].join == "wolves"
      return true
    end
  end

  puzzle.each do |letters|
    if puzzle[1][2].join == "otters"
      return true
    end
  end
end
# p straight_line_include?("wolves", puzzle)



def snaking_include?(word, puzzle)
end
