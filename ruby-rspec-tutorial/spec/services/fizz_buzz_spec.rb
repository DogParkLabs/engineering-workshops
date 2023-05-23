# frozen_string_literal: true

require_relative '../../services/FizzBuzz'

describe Services::FizzBuzz do
  subject { described_class.call(number) }

  context 'when #number is divisible by 3' do
    let(:number) { 3 }

    it 'returns "FizzBuzz"' do
      expect(subject).to eq('FizzBuzz')
    end
  end

  context 'when #number is not divisible by 3' do
    let(:number) { 4 }

    it 'returns nil' do
      expect(subject).to eq(nil)
    end
  end
end
