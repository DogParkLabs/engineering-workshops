# frozen_string_literal: true

module Services
  # * Accepts an number and returns Buzz
  # * when the number is divisible by 5.
  class Buzz
    def self.call(number)
      (number % 5).zero? ? 'Buzz' : ''
    end
  end
end
