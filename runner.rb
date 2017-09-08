require_relative 'word_search'

puzzle = [
  ["a", "w", "o", "l", "v", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "h", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
]

puts "puzzle"
p puzzle
puts "\n"
puts "search 'bison'"
p straight_line_include?("bison", puzzle)
puts "search 'otters'"
p straight_line_include?("otters", puzzle)
puts "search 'wolves'"
p straight_line_include?("wolves", puzzle)
puts "search 'orpekw'"
p straight_line_include?("orpekw", puzzle)
