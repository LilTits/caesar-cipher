# frozen_string_literal: true

# Implementation of the ceasar code
class CaesarCipher
  ALPHABET = ('a'..'z').to_a
  MAJ_ALPHABET = ('A'..'Z').to_a

  def encode(message, shift)
    split_array = message.split(//)
    new_message = []

    split_array.each do |char|
      if ALPHABET.include?(char)
        new_letter_position = ALPHABET.index(char) + shift
        new_message << ALPHABET[new_letter_position]
      elsif MAJ_ALPHABET.include?(char)
        new_letter_position = MAJ_ALPHABET.index(char) + shift
        new_message << MAJ_ALPHABET[new_letter_position]
      else
        new_message << char
      end
    end

    new_message.join
  end

  def decode(message, shift)
    split_array = message.split(//)
    new_message = []
    unshift = -shift
    
    split_array.each do |char|
      if ALPHABET.include?(char)
        new_letter_position = ALPHABET.index(char) + unshift
        new_message << ALPHABET[new_letter_position]
      elsif MAJ_ALPHABET.include?(char)
        new_letter_position = MAJ_ALPHABET.index(char) + unshift
        new_message << MAJ_ALPHABET[new_letter_position]
      else
        new_message << char
      end
    end

    new_message.join
  end
end
