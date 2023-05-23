# frozen_string_literal: true

module Services
  # * Accepts an integer and returns Buzz
  # * when the integer is divisible by 5.
  class Buzz
    def self.call(number)
      number % 5 == 0 ? 'Buzz' : nil
    end
  end
end
