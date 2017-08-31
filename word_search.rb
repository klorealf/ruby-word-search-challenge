
#Took out the boolean ? for testing/development
def straight_line_include?(word, puzzle)
#horizontal search
  horizontal_arrays = []
  puzzle.each { |row| horizontal_arrays << row.join("")}
  horizontal_arrays.each do |string_rows|
    tester = string_rows.include? (word)
    if tester == true
      return true
    end
  end

#vertical search
  vertical_arrays = []
  puzzle.map |i|
    vertical_arrays <<


  false
end

def snaking_include?(word, puzzle)
end








#Driver Code###################################


puzzle = [
  ["a", "w", "o", "l", "v", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "h", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
]


p straight_line_include?("wolves", puzzle)
