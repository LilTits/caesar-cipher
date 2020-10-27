# frozen_string_literal: true

# Implementation of the ceasar code
class CaesarCipher
  def initialize(message, shift)
    @message = message
    @shift = shift
  end

  MIN_ALPHABET = ('a'..'z').to_a
  MAJ_ALPHABET = ('A'..'Z').to_a
  ALPHABET_SIZE = 26

  def encode
    split_message = split_text(@message)

    shift(split_message)
  end

  def decode
    @shift = -@shift
    encode
  end

  private

  def split_text(split_message)
    split_message.split(//)
  end

  def shift(split_message)
    new_message = []

    split_message.each do |char|
      new_message << if MIN_ALPHABET.include?(char)
                       find_replace(MIN_ALPHABET, char)
                     elsif MAJ_ALPHABET.include?(char)
                       find_replace(MAJ_ALPHABET, char)
                     else
                       char
                     end
    end
    new_message.join
  end

  def find_replace(array, char)
    letter_position = array.index(char) + @shift
    fixed_position = letter_position % ALPHABET_SIZE
    array[fixed_position]
  end
end
