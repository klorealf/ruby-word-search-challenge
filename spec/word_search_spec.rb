require_relative '../word_search'

describe 'straight_line_include?' do

puzzle = [
  ["a", "w", "o", "l", "v", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "h", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
  ]

  it "returns true if a method is present in the puzzle" do
    expect(straight_line_include?("otter", puzzle)).to eq(true)
  end

  it "returns false if a method is not present in the puzzle" do
    expect(straight_line_include?("banana", puzzle)).to eq(false)
  end

end

describe 'snaking_include?' do
end
