# frozen_string_literal: true

require_relative '../../services/fizz_buzz'

describe Services::FizzBuzz do
  subject(:call) { described_class.call(number) }

  context 'when #number is divisible by 3' do
    context 'when #number is divisible by 5' do
      let(:number) { 15 }

      it 'returns "FizzBuzz"' do
        expect(call).to eq('FizzBuzz')
      end
    end

    context 'when #number is divisible not by 5' do
      let(:number) { 3 }

      it 'returns "Fizz"' do
        expect(call).to eq('Fizz')
      end
    end
  end

  context 'when #number is not divisible by 3' do
    context 'when #number is divisible by 5' do
      let(:number) { 5 }

      it 'returns "Buzz"' do
        expect(call).to eq('Buzz')
      end
    end

    context 'when #number is divisible not by 5' do
      let(:number) { 4 }

      it 'returns an empty string' do
        expect(call).to eq('')
      end
    end
  end
end
