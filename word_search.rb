require "pry"
def straight_line_include?(word, puzzle)
# binding.pry
  if horizontal?(word, puzzle) == true || vertical?(word, puzzle) == true || diagonal?(word, puzzle) == true
    return true
  else
    return false
  end
  # row1 = puzzle[0].join
  # row2 = puzzle[1].join
  # row3 = puzzle[2].join
  # row4 = puzzle[3].join
  # row5 = puzzle[4].join
  # row6 = puzzle[5].join
  # row7 = puzzle[6].join
  # column1 = (puzzle.map {|row| row[0]}).join
  # column2 = (puzzle.map {|row| row[1]}).join
  # column3 = (puzzle.map {|row| row[2]}).join
  # column4 = (puzzle.map {|row| row[3]}).join
  # column5 = (puzzle.map {|row| row[4]}).join
  # column6 = (puzzle.map {|row| row[5]}).join
  # column7 = (puzzle.map {|row| row[6]}).join
  # diag1 = puzzle[0][1]+puzzle[1][0]
  # diag2 = puzzle[0][2]+puzzle[1][1]+puzzle[2][0]
  # diag3 = puzzle[0][3]+puzzle[1][2]+puzzle[2][1]+puzzle[3][0]
  # diag4 = puzzle[0][4]+puzzle[1][3]+puzzle[2][2]+puzzle[3][1]+puzzle[4][0]
  # diag5 = puzzle[0][5]+puzzle[1][4]+puzzle[2][3]+puzzle[3][2]+puzzle[4][1]+puzzle[5][0]
  # diag6 = puzzle[0][6]+puzzle[1][5]+puzzle[2][4]+puzzle[3][3]+puzzle[4][2]+puzzle[5][1]+puzzle[6][0]
  # diag7 = puzzle[1][6]+puzzle[2][5]+puzzle[3][4]+puzzle[4][3]+puzzle[5][2]+puzzle[6][1]
  # diag8 = puzzle[2][6]+puzzle[3][5]+puzzle[4][4]+puzzle[5][3]+puzzle[6][2]
  # diag9 = puzzle[3][6]+puzzle[4][5]+puzzle[5][4]+puzzle[6][3]
  # diag10 = puzzle[4][6]+puzzle[5][5]+puzzle[6][4]
  # diag11 = puzzle[5][6]+puzzle[6][5]
  # diag12 = puzzle[0][5]+puzzle[1][6]
  # diag13 = puzzle[0][4]+puzzle[1][5]+puzzle[2][6]
  # diag14 = puzzle[0][3]+puzzle[1][4]+puzzle[2][5]+puzzle[3][6]
  # diag15 = puzzle[0][2]+puzzle[1][3]+puzzle[2][4]+puzzle[3][5]+puzzle[4][6]
  # diag16 = puzzle[0][1]+puzzle[1][2]+puzzle[2][3]+puzzle[3][4]+puzzle[4][5]+puzzle[5][6]
  # diag17 = puzzle[0][0]+puzzle[1][1]+puzzle[2][2]+puzzle[3][3]+puzzle[4][4]+puzzle[5][5]+puzzle[6][6]
  # diag18 = puzzle[1][0]+puzzle[2][1]+puzzle[3][2]+puzzle[4][3]+puzzle[5][4]+puzzle[6][5]
  # diag19 = puzzle[2][0]+puzzle[3][1]+puzzle[4][2]+puzzle[5][3]+puzzle[6][4]
  # diag20 = puzzle[3][0]+puzzle[4][1]+puzzle[5][2]+puzzle[6][3]
  # diag21 = puzzle[4][0]+puzzle[5][1]+puzzle[6][2]
  # diag22 = puzzle[5][0]+puzzle[6][1]

  # if row1 =~ /(#{word})/||row1.reverse =~ /(#{word})/
  #   return true
  # elsif row2 =~ /(#{word})/||row2.reverse =~ /(#{word})/
  #   return true
  # elsif row3 =~ /(#{word})/||row3.reverse =~ /(#{word})/
  #   return true
  # elsif row4 =~ /(#{word})/||row4.reverse =~ /(#{word})/
  #   return true
  # elsif row5 =~ /(#{word})/||row5.reverse =~ /(#{word})/
  #   return true
  # elsif row6 =~ /(#{word})/||row6.reverse =~ /(#{word})/
  #   return true
  # elsif row7 =~ /(#{word})/||row7.reverse =~ /(#{word})/
  #   return true
  # elsif column1 =~ /(#{word})/||column1.reverse =~ /(#{word})/
  #   return true
  # elsif column2 =~ /(#{word})/||column2.reverse =~ /(#{word})/
  #   return true
  # elsif column3 =~ /(#{word})/||column3.reverse =~ /(#{word})/
  #   return true
  # elsif column4 =~ /(#{word})/||column4.reverse =~ /(#{word})/
  #   return true
  # elsif column5 =~ /(#{word})/||column5.reverse =~ /(#{word})/
  #   return true
  # elsif column6 =~ /(#{word})/||column6.reverse =~ /(#{word})/
  #   return true
  # elsif column7 =~ /(#{word})/||column7.reverse =~ /(#{word})/
  #   return true
  # elsif diag1 =~ /(#{word})/||diag1.reverse =~ /(#{word})/
  #   return true
  # elsif diag2 =~ /(#{word})/||diag2.reverse =~ /(#{word})/
  #   return true
  # elsif diag3 =~ /(#{word})/||diag3.reverse =~ /(#{word})/
  #   return true
  # elsif diag4 =~ /(#{word})/||diag4.reverse =~ /(#{word})/
  #   return true
  # elsif diag5 =~ /(#{word})/||diag5.reverse =~ /(#{word})/
  #   return true
  # elsif diag6 =~ /(#{word})/||diag6.reverse =~ /(#{word})/
  #   return true
  # elsif diag7 =~ /(#{word})/||diag7.reverse =~ /(#{word})/
  #   return true
  # elsif diag8 =~ /(#{word})/||diag8.reverse =~ /(#{word})/
  #   return true
  # elsif diag9 =~ /(#{word})/||diag9.reverse =~ /(#{word})/
  #   return true
  # elsif diag10 =~ /(#{word})/||diag10.reverse =~ /(#{word})/
  #   return true
  # elsif diag11 =~ /(#{word})/||diag11.reverse =~ /(#{word})/
  #   return true
  # elsif diag12 =~ /(#{word})/||diag12.reverse =~ /(#{word})/
  #   return true
  # elsif diag13 =~ /(#{word})/||diag13.reverse =~ /(#{word})/
  #   return true
  # elsif diag14 =~ /(#{word})/||diag14.reverse =~ /(#{word})/
  #   return true
  # elsif diag15 =~ /(#{word})/||diag15.reverse =~ /(#{word})/
  #   return true
  # elsif diag16 =~ /(#{word})/||diag16.reverse =~ /(#{word})/
  #   return true
  # elsif diag17 =~ /(#{word})/||diag17.reverse =~ /(#{word})/
  #   return true
  # elsif diag18 =~ /(#{word})/||diag18.reverse =~ /(#{word})/
  #   return true
  # elsif diag19 =~ /(#{word})/||diag19.reverse =~ /(#{word})/
  #   return true
  # elsif diag20 =~ /(#{word})/||diag20.reverse =~ /(#{word})/
  #   return true
  # elsif diag21 =~ /(#{word})/||diag21.reverse =~ /(#{word})/
  #   return true
  # elsif diag22 =~ /(#{word})/||diag22.reverse =~ /(#{word})/
  #   return true
  # else
  #   return false
  # end
end

def horizontal?(word, puzzle)
  puzzle.each do |row|
    if row.join =~ /(#{word})/||row.join.reverse =~ /(#{word})/
      return true
    end
  end
  return false
end

def vertical?(word, puzzle)
  puzzle.transpose.each do |col|
    if col.join =~ /(#{word})/||col.join.reverse =~ /(#{word})/
      return true
    end
  end
  return false
end

def diagonal?(word, puzzle)
# binding.pry
  padding = puzzle.size - 1
  diags = []
  puzzle.each do |row|
    inverse_padding = puzzle.size - padding
    diags << ([nil] * inverse_padding) + row + ([nil] * padding)
    padding -= 1
  end
  all_diags = diags.transpose.map(&:compact)
  all_diags.delete_at(0)
  all_diags.each do |diag|
    if diag.join =~ /(#{word})/||diag.join.reverse =~ /(#{word})/
      return true
    end
  end
  return false
end

def snaking_include?(word, puzzle)

end
