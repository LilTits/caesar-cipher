# frozen_string_literal: true

require 'rspec'

require_relative '../app/caesar_cipher'

RSpec.describe CaesarCipher do
  let(:message) { 'Hello there' }
  let(:shift) { 5 }
  let(:coded_message) { 'Mjqqt ymjwj' }

  describe '#caesar_cipher' do
    it 'encrypt a message' do
      expect(subject.caesar_cipher(message, shift)).to eql(coded_message)
    end
  end
end
