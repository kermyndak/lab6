# frozen_string_literal: true

# This class for solution part 2 in lab 6
class Integral
  def initialize(a_val, b_val, n_val = 10)
    @n_val = n_val.to_f
    @a_val = a_val.to_f
    @b_val = b_val.to_f
  end

  def intg
    sum = 0
    step = (@b_val - @a_val) / @n_val
    loop do
      sum += yield(@a_val)
      @a_val += step
      break if @a_val >= @b_val
    end
    sum * step
  end
end
