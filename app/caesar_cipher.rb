# frozen_string_literal: true

# Implementation of the ceasar code
class CaesarCipher
  ALPHABET = ('a'..'z').to_a
  MAJ_ALPHABET = ('A'..'Z').to_a

  def encode(message, shift)
    split_message = split_text(message)

    shift_key(split_message, shift)
  end

  def decode(message, unshift)
    split_message = split_text(message)

    shift_key(split_message, unshift)
  end

  private

  def split_text(split_message)
    split_message.split(//)
  end

  def shift_key(split_message, shift)
    new_message = []

    split_message.each do |char|
      if ALPHABET.include?(char)
        new_letter_position = ALPHABET.index(char) + shift
        new_letter_position -= ALPHABET.length if ALPHABET.length < new_letter_position
        new_message << ALPHABET[new_letter_position]
      elsif MAJ_ALPHABET.include?(char)
        new_letter_position = MAJ_ALPHABET.index(char) + shift
        new_letter_position - ALPHABET.length if MAJ_ALPHABET.length < new_letter_position
        new_message << MAJ_ALPHABET[new_letter_position]
      else
        new_message << char
      end
    end

    new_message.join
  end
end

# jules = CaesarCipher.new
# message = jules.decode('oh kdfkdjh yrxv shuphwwudlw gdvvxuhu od frqilghqwldolwh vlpsohphqw', 3)
# puts message
