# frozen_string_literal: true

require_relative '../../services/buzz'

describe Services::Buzz do
  subject(:call) { described_class.call(number) }

  context 'when #number is divisible by 5' do
    let(:number) { 5 }

    it 'returns "Buzz"' do
      expect(call).to eq('Buzz')
    end
  end

  context 'when #number is not divisible by 5' do
    let(:number) { 4 }

    it 'returns nil' do
      expect(call).to eq(nil)
    end
  end
end
