# frozen_string_literal: true

require_relative '../../services/fizz'

describe Services::Fizz do
  subject { described_class.call(number) }

  context 'when #number is divisible by 3' do
    let(:number) { 3 }

    it 'returns "Fizz"' do
      expect(subject).to eq('Fizz')
    end
  end

  context 'when #number is not divisible by 3' do
    let(:number) { 4 }

    it 'returns nil' do
      expect(subject).to eq(nil)
    end
  end
end
