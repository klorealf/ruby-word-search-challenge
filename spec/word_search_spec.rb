require_relative '../word_search'

describe 'straight_line_include?' do
  let(:puzzle) {[
  ["a", "w", "o", "l", "v", "e", "s"],
  ["s", "o", "a", "w", "a", "h", "p"],
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "h", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]] }

  it "returns true if the word is present in a row" do
    search_rows = straight_line_include?("wolves", puzzle)
    expect(search_rows).to eq true
  end

  it "returns false if the word is not present in a row" do
    search_rows = straight_line_include?("dancing", puzzle)
    expect(search_rows).to eq false
  end
end

describe 'snaking_include?' do
end
