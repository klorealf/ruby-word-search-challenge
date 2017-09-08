=begin
input: a word to be searched into the puzzle
arguments: word = word we are looking for
           puzzle = word search puzzle, modeled as a nested array

step1: loop through lines
  get the current_word <- word
  check if current_word includes word

step2: loop through columns
  get the current_word <- word
  check if current_word includes word

step3: loop through diagonals
  get the current_word <- word
  check if current_word includes word

output: a boolean = true if the word is found, and false otherwise
=end

# search in rows
def search_rows(row_index, word, puzzle)
  nb_columns = puzzle[0].length
  current_word = puzzle[row_index].map{|elm| elm}.join('')
  return current_word.include?(word) || current_word.include?(word.reverse)
end

# search in columns
def search_cols(col_index, word, puzzle)
  nb_rows = puzzle.length
  col_word = (0..nb_rows-1).map{|elm| puzzle[elm][col_index]}
  current_word = col_word.map{|elm| elm}.join('')
  return current_word.include?(word) || current_word.include?(word.reverse)
end

# search in diags part 1
def search_diags(diag_num, word, puzzle)
  nb_columns = puzzle[0].length
  nb_rows = puzzle.length
  nb_diags = nb_rows*2 - 1

  if diag_num < nb_columns
     current_word = (0..diag_num).map{|elm| puzzle[elm][diag_num-elm]}.join('')
   else
     current_word = (1..2*nb_columns-(diag_num+1)).map{|elm| puzzle[diag_num-nb_columns + elm][nb_columns-elm]}.join('')
  end

  return current_word.include?(word) || current_word.include?(word.reverse)
end


def straight_line_include?(word, puzzle)
  # index for rows and columns
  row_index = 0
  col_index = 0

  # total number of rows, columns, diagonals
  nb_rows = puzzle.length
  nb_columns = puzzle[0].length
  nb_diags = nb_rows*2 - 1

  # step1: loop through lines
  res_rows = (0..nb_rows-1).map{|row_index| search_rows(row_index, word, puzzle)}

  # step2: loop through columns
  res_columns = (0..nb_columns-1).map{|col_index| search_cols(col_index, word, puzzle)}

  # step3: loop through diags
  res_diags = (0..nb_diags-1).map{|diag_num| search_diags(diag_num, word, puzzle)}

  return res_rows.any?{|elm| elm == true} || res_columns.any?{|elm| elm == true} || res_diags.any?{|elm| elm == true}
end

def snaking_include?(word, puzzle)

end
