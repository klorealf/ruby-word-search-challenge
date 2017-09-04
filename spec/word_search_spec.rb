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
	it "checks to see if wolves is in puzzle" do
		expect(straight_line_include?('wolves', puzzle)).to eq true
	end
	it "checks to see if otters is in puzzle" do
		expect(straight_line_include?('otters', puzzle)).to eq true
	end
	it "checks to see if bison is in puzzle" do
		expect(straight_line_include?('bison', puzzle)).to eq true
	end
end

describe 'snaking_include?' do
end
