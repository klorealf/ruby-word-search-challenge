#iterate through first array to find match 
# if second index of arrays 

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
	puzzleArray = []
  puzzle.each do |row|     
    puzzleArray << row.join('')
      
  end
  
  puzzleArray.each do |word_match|
    if word_match.include?(word)
      return word
      true
    else
      false
    end    
  end  
end

# p puzzle.transpose
def vertical_line_include?(word, puzzle)
  puzzle.transpose.select do |column| 
   if column.join.include?(word)
    return word
    true
  else 
    false
    end
  end 
end


def snaking_include?(word, puzzle)

end
p straight_line_include?('wolves', puzzle)
p vertical_line_include?('otters', puzzle)



