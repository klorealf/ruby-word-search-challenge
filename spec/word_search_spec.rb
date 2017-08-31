require_relative '../word_search'

# describe 'straight_line_include?' do

#   it 'finds word in rows of array' do
#     puzzle = [
#     ["a", "w", "o", "l", "v", "e", "s"],
#     ["s", "o", "a", "w", "a", "h", "p"],
#     ["i", "t", "c", "k", "e", "t", "n"],
#     ["o", "t", "s", "d", "h", "o", "h"],
#     ["s", "e", "h", "g", "s", "t", "a"],
#     ["u", "r", "p", "i", "w", "e", "u"],
#     ["z", "s", "b", "n", "u", "i", "r"]
#     ]

#     expect(straight_line_include?('wolves', puzzle)).to eq true
#   end

#   it 'finds backwards word in rows of array' do
#     puzzle = [
#     ["a", "w", "o", "l", "v", "e", "s"],
#     ["s", "o", "a", "w", "a", "h", "p"],
#     ["i", "t", "c", "k", "e", "t", "n"],
#     ["o", "t", "s", "d", "h", "o", "h"],
#     ["s", "e", "h", "g", "s", "t", "a"],
#     ["u", "r", "p", "i", "w", "e", "u"],
#     ["z", "s", "b", "n", "u", "i", "r"]
#     ]

#     expect(straight_line_include?('sevlow', puzzle)).to eq true
#   end

#   it 'finds word in col of array' do
#     puzzle = [
#     ["a", "w", "o", "l", "v", "e", "s"],
#     ["s", "o", "a", "w", "a", "h", "p"],
#     ["i", "t", "c", "k", "e", "t", "n"],
#     ["o", "t", "s", "d", "h", "o", "h"],
#     ["s", "e", "h", "g", "s", "t", "a"],
#     ["u", "r", "p", "i", "w", "e", "u"],
#     ["z", "s", "b", "n", "u", "i", "r"]
#     ]

#     expect(straight_line_include?('otters', puzzle)).to eq true
#   end

#   it 'finds backwards word in col of array' do
#     puzzle = [
#     ["a", "w", "o", "l", "v", "e", "s"],
#     ["s", "o", "a", "w", "a", "h", "p"],
#     ["i", "t", "c", "k", "e", "t", "n"],
#     ["o", "t", "s", "d", "h", "o", "h"],
#     ["s", "e", "h", "g", "s", "t", "a"],
#     ["u", "r", "p", "i", "w", "e", "u"],
#     ["z", "s", "b", "n", "u", "i", "r"]
#     ]

#     expect(straight_line_include?('sretto', puzzle)).to eq true
#   end

#   it 'finds word in diag of array' do
#     puzzle = [
#     ["a", "w", "o", "l", "v", "e", "s"],
#     ["s", "o", "a", "w", "a", "h", "p"],
#     ["i", "t", "c", "k", "e", "t", "n"],
#     ["o", "t", "s", "d", "h", "o", "h"],
#     ["s", "e", "h", "g", "s", "t", "a"],
#     ["u", "r", "p", "i", "w", "e", "u"],
#     ["z", "s", "b", "n", "u", "i", "r"]
#     ]

#     expect(straight_line_include?('nosib', puzzle)).to eq true
#   end

#   it 'finds backwards word in diag of array' do
#     puzzle = [
#     ["a", "w", "o", "l", "v", "e", "s"],
#     ["s", "o", "a", "w", "a", "h", "p"],
#     ["i", "t", "c", "k", "e", "t", "n"],
#     ["o", "t", "s", "d", "h", "o", "h"],
#     ["s", "e", "h", "g", "s", "t", "a"],
#     ["u", "r", "p", "i", "w", "e", "u"],
#     ["z", "s", "b", "n", "u", "i", "r"]
#     ]

#     expect(straight_line_include?('bison', puzzle)).to eq true
#   end

# end

describe 'horizontal?' do

  it 'finds word in rows of array' do
    puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    expect(horizontal?('wolves', puzzle)).to eq true
  end

  it 'finds no word in rows of array' do
    puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    expect(horizontal?('trwsw', puzzle)).to eq false
  end

  it 'finds backwards word in rows of array' do
    puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    expect(horizontal?('sevlow', puzzle)).to eq true
  end

end

describe 'vertical?' do

  it 'finds word in rows of array' do
    puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    expect(vertical?('otters', puzzle)).to eq true
  end

  it 'finds no word in rows of array' do
    puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    expect(vertical?('trwsw', puzzle)).to eq false
  end

end

describe 'diagonal?' do

  it 'finds word in diag of array' do
    puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    expect(diagonal?('bison', puzzle)).to eq true
  end

  it 'finds no word in diag of array' do
    puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    expect(diagonal?('trwsw', puzzle)).to eq false
  end

  it 'finds word in diag of array' do
    puzzle = [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
    ]

    expect(diagonal?('nosib', puzzle)).to eq true
  end

end



describe 'snaking_include?' do
end
