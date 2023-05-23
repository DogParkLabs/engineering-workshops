# frozen_string_literal: true

module Services
  # * Accepts an integer and returns Fizz
  # * when the integer is divisible by 3.
  class Fizz
    def self.call(number)
      (number % 3) == 0 ? 'Fizz' : nil
    end
  end
end
