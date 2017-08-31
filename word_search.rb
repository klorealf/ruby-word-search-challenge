def straight_line_include?(word, puzzle)
  # word_present = nil
  str_puzzle_rows = ""
  puzzle_rows = puzzle.length
  puzzle_columns = puzzle[0].length
  puzzle.each do |nested_arrays|
    puzzle_iteration = nested_arrays
    str_puzzle_rows += puzzle_iteration.join("")
    if str_puzzle_rows.include?(word)
      return true
    end
  end
  return false
end

def snaking_include?(word, puzzle)
end


