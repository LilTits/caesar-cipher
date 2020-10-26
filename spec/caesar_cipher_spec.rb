# frozen_string_literal: true

require 'rspec'

require_relative '../app/caesar_cipher'

RSpec.describe CaesarCipher do
  let(:message) { 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' }
  let(:coded_message) { 'defghijklmnopqrstuvwxyzabcDEFGHIJKLMNOPQRSTUVWXYZABC' }

  describe '#encode' do
    let(:shift) { 3 }

    subject { CaesarCipher.new(message, shift) }

    it 'encrypt a message' do
      expect(subject.encode).to eql(coded_message)
    end
  end

  describe '#decode' do
    let(:shift) { -3 }

    subject { CaesarCipher.new(coded_message, shift) }

    it 'decrypt a message' do
      expect(subject.decode).to eql(message)
    end
  end
end
