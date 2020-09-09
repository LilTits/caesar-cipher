# frozen_string_literal: true

# Implementation of the ceasar code
class CaesarCipher
  ALPHABET = %w[a b c d e f g h i j k l m n o p q r s t u v w x y z].freeze

  def caesar_cipher(message, shift)
    split_array = message.split(//)
    split_array.each do |char|
      if char == ' '
        puts 'space'
      elsif ALPHABET.include?(char)
        puts ALPHABET.index(char) + shift
      elsif ALPHABET.include?(char.downcase)
        puts ALPHABET.index(char.downcase) + shift
      else
        puts 'idk'
      end
    end
  end
end
