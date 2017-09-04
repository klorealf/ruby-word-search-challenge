puzzle = [
	["a", "w", "o", "l", "v", "e", "s"], 
	["s", "o", "a", "w", "a", "h", "p"], 
	["i", "t", "c", "k", "e", "t", "n"],
	["o", "t", "s", "d", "h", "o", "h"],
	["s", "e", "h", "g", "s", "t", "a"],
	["u", "r", "p", "i", "w", "e", "u"],
	["z", "s", "b", "n", "u", "i", "r"]
]
#require 'pry'
def straight_line_include?(word, puzzle)
	#binding.pry

	word_array = word.split(//)
	#word_array_length = word_array.length

	#forward horizontal (east)
	for row in 0..(puzzle.length - 1)
		for col in 0..(puzzle[row].length - word.length)
			index = 0
			while (index < word.length - 1) && (puzzle[row][col + index] == word_array[index])
				index += 1
			end
			if (puzzle[row][col + index]) == (word_array[index])
				return true
			end
		end
	end
	#horizontal backwards (west)
	for row in 0..(puzzle.length - 1)
		for col in 0..(puzzle[row].length - word.length)
			index = 0
			while (index < word.length - 1) && (puzzle[row][col + index] == word_array[word.length - 1 - index])
				index += 1
			end
			if (puzzle[row][col + index]) == (word_array[word.length - 1 - index])
				return true
			end
		end
	end
	# downward vertical (south)
	for col in 0..(puzzle[0].length - 1)
		for row in 0..(puzzle.length - word.length)
			index = 0
			while (index < word.length - 1) && (puzzle[row + index][col] == word_array[index])
				index += 1
			end
			if puzzle[row + index][col] == word_array[index]
				return true
			end
		end
	end
	#upward vertical(north)
	for col in 0..(puzzle[0].length - 1)
		for row in 0..(puzzle.length - word.length)
			index = 0
			while (index < word.length - 1) && (puzzle[row + index][col] == word_array[word.length - 1 - index])
				index += 1
			end
			if puzzle[row + index][col] == word_array[word.length - 1 - index]
				return true
			end
		end
	end
	#diagonally downard (southeast)
	for row in 0..(puzzle.length - word.length)
		for col in 0..(puzzle[row].length - word.length)
			index = 0
			while (index < word.length - 1) && (puzzle[row + index][col + index] == word_array[index])
				index += 1
			end
			if puzzle[row + index][col + index] == word_array[index]
				return true
			end
		end
	end


	#diagonally upward(northwest)	
	for row in 0..(puzzle.length - word.length)
		for col in 0..(puzzle[row].length - word.length)
			index = 0
			while (index < word.length - 1) && (puzzle[row + index][col + index] == word_array[word.length - 1 - index])
				index += 1
			end
			if puzzle[row + index][col + index] == word_array[word.length - 1 - index]
				return true
			end
		end
	end
	#diagonally downward(southwest)
	#incorrect(for right now)
	for row in 0..(puzzle.length - word.length)
		for col in (word.length - 1)..(puzzle[row].length - 1)
			index = 0
			while (index < word.length - 1) && (puzzle[row + index][col - index] == word_array[index])
				index += 1
			end
			if puzzle[row + index][col - index] == word_array[index]
				return true
			end
		end
	end

	#diagonally upward(northeast)
	for row in (word.length - 1)..(puzzle.length - 1)
		for col in 0..(puzzle[0].length - word.length)
			index = 0
			while (index < word.length - 1) && (puzzle[row - index][col + index] == word_array[index])
				index += 1
			end
			if puzzle[row - index][col + index] == word_array[index]
				return true
			end
		end
	end

	return false
end

def snaking_include?(word, puzzle)
end
