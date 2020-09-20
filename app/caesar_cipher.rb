# frozen_string_literal: true

# Implementation of the ceasar code
class CaesarCipher
  ALPHABET = ('a'..'z').to_a

  def caesar_cipher(message, shift)
    split_array = message.split(//)
    new_message = []
    split_array.each do |char|
      if char == ' '
        new_message << ' '
      elsif ALPHABET.include?(char)
        new_letter = ALPHABET.index(char) + shift
        new_message << ALPHABET[new_letter]
      elsif ALPHABET.include?(char.downcase)
        new_letter = ALPHABET.index(char.downcase) + shift
        new_message << ALPHABET[new_letter].upcase
      else
        puts 'idk'
      end
    end
    new_message.join
  end
end
