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

#https://repl.it/KaL8/32

def search_rows(row_index, word, puzzle)
nb_columns = puzzle[0].length

current_word = ""

  for j in 0..nb_columns-1
    current_word << puzzle[row_index][j]
  end

  current_word.include?(word) || current_word.include?(word.reverse)

end

def search_cols(col_index, word, puzzle)
nb_rows = puzzle.length

current_word = ""

 for i in 0..nb_rows-1
   current_word << puzzle[i][col_index]
 end

  current_word.include?(word) || current_word.include?(word.reverse)

end

def search_diags(diag_num, word, puzzle)
nb_columns = puzzle[0].length
nb_rows = puzzle.length
nb_diags = nb_rows*2 - 1

current_word = ""
elt = ""

  if diag_num < nb_columns
    for i in 0..diag_num
        # works until diag_num == nb_columns - 1
          current_word << puzzle[i][diag_num-i]
    end
  else
    for i in 1..2*nb_columns-(diag_num+1)
      elt = puzzle[diag_num-nb_columns + i][nb_columns-i]
      #p elt
      #if elt != nil
        current_word << elt
      #end
    end
  end

  current_word.include?(word) || current_word.include?(word.reverse)

end

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

  # index for rows and columns
  row_index = 0
  col_index = 0

  # total number of rows, columns, diagonals
  nb_rows = puzzle.length
  nb_columns = puzzle[0].length
  nb_diags = nb_rows*2 - 1
  res = []

  # step1: loop through lines
  res_rows = (0..nb_rows-1).map{|row_index| search_rows(row_index, word, puzzle)}

  # step2: loop through columns
  res_columns = (0..nb_columns-1).map{|col_index| search_cols(col_index, word, puzzle)}

  # step3: loop through diags
  res_diags = (0..nb_diags-1).map{|diag_num| search_diags(diag_num, word, puzzle)}

  return res_rows.any?{|elm| elm == true} || res_columns.any?{|elm| elm == true} || res_diags.any?{|elm| elm == true}
end

p straight_line_include?("bison", puzzle)
p straight_line_include?("otters", puzzle)
p straight_line_include?("wolves", puzzle)
p straight_line_include?("orpekw", puzzle)

def snaking_include?(word, puzzle)

end
