def straight_line_include?(word, puzzle)

  str_puzzle_rows = ""
  puzzle_rows = puzzle.length
  puzzle_columns = puzzle[0].length
  puzzle.each do |nested_arrays|
    puzzle_iteration = nested_arrays
    str_puzzle_rows += puzzle_iteration.join("")
    if str_puzzle_rows.include?(word)
      return true

    end
    row_counter = 0
    nested_arrays.each do |el|
      # print string with letter index and letter
      p "#{row_counter} - #{el}"
      row_counter += 1
    end
  end
  return false
end

def snaking_include?(word, puzzle)
end


