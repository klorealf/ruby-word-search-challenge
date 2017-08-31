def straight_line_include?(word, puzzle)
  result = nil
  str_puzzle_rows = ""
  puzzle_rows = puzzle.length
  puzzle_columns = puzzle[0].length
  puzzle.each do |nested_arrays|
    puzzle_iteration = nested_arrays
    str_puzzle_rows += puzzle_iteration.join("")
    result = str_puzzle_rows.include?(word)
  end
  p result
end

def snaking_include?(word, puzzle)
end


