# frozen_string_literal: true

require 'rspec'

require_relative '../app/caesar_cipher'

RSpec.describe CaesarCipher do
  let(:message) { 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ' }
  let(:coded_message) { 'defghijklmnopqrstuvwxyzabcDEFGHIJKLMNOPQRSTUVWXYZABC' }

  describe '#encode' do
    context 'encrypt the message' do
      let(:shift) { 3 }

      subject { CaesarCipher.new(message, shift) }

      it 'shift by three' do
        expect(subject.encode).to eql(coded_message)
      end
    end

    context 'decrypt a message' do
      let(:shift) { -3 }

      subject { CaesarCipher.new(coded_message, shift) }

      it 'unshift by three' do
        expect(subject.encode).to eql(message)
      end
    end
  end
end
