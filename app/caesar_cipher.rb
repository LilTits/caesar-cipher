# frozen_string_literal: true

# Implementation of the ceasar code
class CaesarCipher
  ALPHABET = ('a'..'z').to_a
  MAJ_ALPHABET = ('A'..'Z').to_a

  def caesar_cipher(message, shift)
    split_array = message.split(//)
    new_message = []

    split_array.each do |char|
      if char == ' '
        new_message << ' '
      elsif ALPHABET.include?(char)
        new_letter_position = ALPHABET.index(char) + shift
        new_message << ALPHABET[new_letter_position]
      elsif MAJ_ALPHABET.include?(char)
        new_letter_position = MAJ_ALPHABET.index(char) + shift
        new_message << MAJ_ALPHABET[new_letter_position]
      end
    end

    new_message.join
  end
end
