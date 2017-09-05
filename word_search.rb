#accept two arguments:
# (1) a word we're looking for and
# (2) a word search puzzle modeled as a nested array.
# The method will return true if the word can be found in the puzzle
# and false if not.
# only allow words to be found in straight lines
#Words can be found in horizontal, vertical, and diagonal lines.
#words can be spelled forward and backward.

puzzle = [
  ["a", "w", "o", "l", "v", "e", "s"], 
  ["s", "o", "a", "w", "a", "h", "p"], 
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "h", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
]

def shift (puzzle, direction) #
	shift_puzzle = []
		 if 	direction == "right"
			puzzle.each do |row|
				shift_puzzle << row.dup
					shift_puzzle.each_with_index do |row, index|
						(6 - index).times{row.unshift(nil)}
						index.times{row << nil}
					end
			end

		else direction == "left"
			puzzle.each do |row|
				shift_puzzle << row.dup
					shift_puzzle.each_with_index do |row, index|
						(6 - index).times{row.unshift(nil)}
						index.times{row << nil}
					end
			end

		end
		shift_puzzle
end



def straight_line_include?(word, puzzle)
	if puzzle.select do |row|
		row.join.include?(word) || row.join.reverse.include?(word)
		.any?
		puts "Horizontal"
	elsif puzzle.transpose.select do |row|
		ow.join.include?(word) || row.join.reverse.include?(word)
		.any?
		puts "Vertical" 
	end	
end


	# column = []
	# i=0
	# until puzzle.length == 7
	# 	puzzle.each do |array|
	# 		column << array[i]
	# 			column.each do |letter|
	# 				column.select {letter.join.include?(word) || letter.join.reverse.include?(word)}.any?
	# 			end	
	# 	end
	# 	i += 1
	# end
#end

#p straight_line_include?("chicken", puzzle)

def snaking_include?(word, puzzle)
end

