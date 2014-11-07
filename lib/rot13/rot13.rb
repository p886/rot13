class Rot13

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
    new_char = find_new_char(char)
    new_char.downcase! if !!(char.match(/[[:lower:]]/))
    new_string << new_char
  end

  def find_new_char(old_char)
    alphabet   = ('A'..'Z').to_a
    return old_char unless alphabet.include?(old_char.upcase)
    old_index  = alphabet.index(old_char.upcase)
    new_index  = (old_index + alphabet.length / 2) % alphabet.length
    new_letter = alphabet[new_index]
  end

end
