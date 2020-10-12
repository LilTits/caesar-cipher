# frozen_string_literal: true

require 'rspec'

require_relative '../app/caesar_cipher'

RSpec.describe CaesarCipher do
  let(:message) { 'Hello there' }
  let(:test) { 'xyz' }
  let(:shift) { 5 }
  let(:unshift) { -5 }
  let(:coded_message) { 'Mjqqt ymjwj' }

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
