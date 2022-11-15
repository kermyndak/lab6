# frozen_string_literal: true

require_relative 'part3'

# This class for solution part1 in lab6 (ln(1 + (x - 1)))
class FirstPart
  def initialize(a_val, b_val, accur = 1e-3)
    @a_val = a_val.to_f
    @b_val = b_val.to_f
    @accur = accur.to_f
    @best_val = best_val
    @sum = 0
  end

  def len_ln
    default = @a_val
    step = (@b_val - @a_val) / 2.0
    loop do
      @sum = 0
      step /= 2
      @a_val = default
      sum
      break if (@sum * step - @best_val).abs <= @accur
    end
    [@sum * step, (step**-1).to_i]
  end

  def sum(step)
    @sum = 0
    loop do
      @sum += (1 + 1 / @a_val**2)**0.5
      @a_val += step
      break if @a_val >= @b_val
    end
  end

  def best_val(count = 1_000_000)
    int = Integral.new(@a_val, @b_val, count)
    int.intg { |x| (1 + 1 / x**2)**0.5 }
  end
end
