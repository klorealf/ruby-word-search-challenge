require_relative '../word_search'

describe 'straight_line_include?' do
  let(:puzzle) { [
    ["a", "w", "o", "l", "v", "e", "s"],
    ["s", "o", "a", "w", "a", "h", "p"],
    ["i", "t", "c", "k", "e", "t", "n"],
    ["o", "t", "s", "d", "h", "o", "h"],
    ["s", "e", "h", "g", "s", "t", "a"],
    ["u", "r", "p", "i", "w", "e", "u"],
    ["z", "s", "b", "n", "u", "i", "r"]
  ] }
  describe 'check_horizontal?' do
    it 'checks word' do
      expect(straight_line_include?('wolves', puzzle)).to be true
    end
    it 'checks word backward' do
      expect(straight_line_include?('ehgs', puzzle)).to be true
    end
  end

  describe 'check_vertical?' do
    it 'checks word' do
      expect(straight_line_include?('otters', puzzle)).to be true
    end
    it 'checks word backward' do
      expect(straight_line_include?('lwkdg', puzzle)).to be true
    end
  end

  describe 'check_diagonal?' do
    it 'checks word decending forward' do
      expect(straight_line_include?('dser', puzzle)).to be true
    end
    it 'checks word decending backward' do
      expect(straight_line_include?('dhrz', puzzle)).to be true
    end
    it 'checks word ascending forward' do
      expect(straight_line_include?('bison', puzzle)).to be true
    end
    it 'checks word ascending backward' do
      expect(straight_line_include?('dcoa', puzzle)).to be true
    end
  end
end

describe 'snaking_include?' do

end