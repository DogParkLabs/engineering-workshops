# frozen_string_literal: true

module Services
  # * Accepts an number and returns Fizz
  # * when the number is divisible by 3.
  class Fizz
    def self.call(number)
      (number % 3).zero? ? 'Fizz' : ''
    end
  end
end
