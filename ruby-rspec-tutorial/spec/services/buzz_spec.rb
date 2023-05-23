# frozen_string_literal: true

require_relative '../../services/Buzz'

describe Services::Buzz do
  subject { described_class.call(number) }

  context 'when #number is divisible by 5' do
    let(:number) { 5 }

    it 'returns "Buzz"' do
      expect(subject).to eq('Buzz')
    end
  end

  context 'when #number is not divisible by 5' do
    let(:number) { 4 }

    it 'returns nil' do
      expect(subject).to eq(nil)
    end
  end
end
