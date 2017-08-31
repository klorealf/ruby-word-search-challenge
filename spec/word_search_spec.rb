require_relative '../word_search'

describe 'straight_line_include?' do

  it "returns true if a method is present in the puzzle" do
    expect(straight_line_include?("otter", puzzle).to eq(true)
  end
  it "returns false if a method is not present in the puzzle" do
    expect(straight_line_include?("banana"), puzzle).to eq(false)
  end

end

describe 'snaking_include?' do
end
