class Rot13

  KEY_MAP = {
    "A" => "N",
    "B" => "O",
    "C" => "P",
    "D" => "Q",
    "E" => "R",
    "F" => "S",
    "G" => "T",
    "H" => "U",
    "I" => "V",
    "J" => "W",
    "K" => "X",
    "L" => "Y",
    "M" => "Z",
    "N" => "A",
    "O" => "B",
    "P" => "C",
    "Q" => "D",
    "R" => "E",
    "S" => "F",
    "T" => "G",
    "U" => "H",
    "V" => "I",
    "W" => "J",
    "X" => "K",
    "Y" => "L",
    "Z" => "M",
  }

  def initialize(string)
    @string = string
  end

  def transform
    new_string = ''
    string.each_char do |char|
      rotate_char(char, new_string)
    end
    new_string
  end

  private

  attr_accessor :string

  def rotate_char(char, new_string)
    new_char = (KEY_MAP[char.upcase] || ' ')
    new_char.downcase! if !!(char.match(/[[:lower:]]/))
    new_string << new_char
  end

end
