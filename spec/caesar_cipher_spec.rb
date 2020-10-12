# frozen_string_literal: true

require 'rspec'

require_relative '../app/caesar_cipher'

RSpec.describe CaesarCipher do
  let(:message) { 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' }
  let(:message_2) { 'xXYZ' }
  let(:shift) { 3 }
  let(:unshift) { -3 }
  let(:coded_message) { 'defghijklmnopqrstuvwxyzabcDEFGHIJKLMNOPQRSTUVWXYZABC' }
  let(:coded_message_2) { 'aABC' }

  describe '#encode' do
    it 'encrypt a message' do
      expect(subject.encode(message, shift)).to eql(coded_message)
    end
  end

  describe '#decode' do
    it 'decrypt a message' do
      expect(subject.decode(coded_message, unshift)).to eql(message)
    end
  end
end
