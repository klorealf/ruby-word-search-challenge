
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

#vertical search : Transforming the index of each nested array has to be easier but I could not get map to work properly
  vert_index = 0
  vert_row_counter = 0
  comb_vert_array = []
  until vert_row_counter == puzzle[0].length
      until vert_index == puzzle.length
        comb_vert_array << puzzle[vert_index][vert_row_counter]
        vert_index += 1
      end
    vert_index = 0
    vert_row_counter += 1
    vertical_arrays = comb_vert_array.each_slice(7).to_a
  end
#Once vertical arrays transformed this tests to see if the word is in those arrays using the same logic as
  vertical_arrays_join = []
  vertical_arrays.each { |row| vertical_arrays_join << row.join("")}
  vertical_arrays_join.each do |string_rows|
    tester = string_rows.include? (word)
    if tester == true
      return true
    end
  end
  false
end

#This does not work, attempting to populate the diagonal arrays but did not complete
  right_diagnal_arrays = []
  loop_counter = 0
  interior_loop_counter = 0
  rd_column_index = puzzle[0].length - 1
  # rd_column_index = 6
  rd_row_index = 0
  # rd_row_index = puzzle.length-1

#Loops through one less time than the product of the rows and columns
  until loop_counter == (puzzle.length + puzzle[0].length - 1)
    # MIGHT HAVE TO FLIP HALF WAY THROUGH if loop_counter <
#Populates array even if nil, will be same number of elements in every nested array
    until interior_loop_counter == puzzle.length
      right_diagnal_arrays << puzzle[rd_row_index][rd_column_index]
      rd_column_index += 1
      rd_row_index += 1
      interior_loop_counter += 1
    end
    loop_counter += 1
    interior_loop_counter = 0
    rd_column_index = ((puzzle[0].length - 1) - loop_counter)
    rd_row_index = 0

    #This might be where out flip goes and/or row_index += 1
  end
  #Slice by array length will make more dynamic
  right_diagnal_arrays.each_slice(7).to_a
  # = (puzzle[0].length)
end





def snaking_include?(word, puzzle)
end

