# frozen_string_literal: true

require_relative 'part1'
require_relative 'part2'
require_relative 'part3'

printf 'Select part (1..3): '
sel = gets
sel = sel.match?(/^[1-2]$/) ? Integer(sel) : 0
case sel
when 1
  val = FirstPart.new(1, 2)
  puts "Len Ln() function accuracy variant: #{val.best_val}"
  temp = val.len_ln
  puts "Len Ln() function with accuracy = 1e-3: #{temp[0]}, count steps: #{temp[1]}"
  val = FirstPart.new(1, 2, 1e-4)
  temp = val.len_ln
  puts "Len Ln() function with accuracy = 1e-4: #{temp[0]}, count steps: #{temp[1]}"
when 2
  puts "This part while don't work"
when 3
  first = ->(x) { Math.sin(x) / x }
  second = ->(x) { Math.tan(x + 1) / (x + 1) }

  prc = proc { |x| Math.sin(x) / x }
  prc_second = proc { |x| Math.tan(x + 1) / (x + 1) }

  p = Integral.new(0.1, 1, 1_000_000)
  puts "First function (lambda function): #{p.intg(&first)}"

  p = Integral.new(1, 2, 1_000_000)
  puts "Second function (lambda function): #{p.intg(&second)}"

  p = Integral.new(0.1, 1, 1_000_000)
  puts "First function (with block): #{p.intg { |x| Math.sin(x) / x }}"

  p = Integral.new(1, 2, 1_000_000)
  puts "Second function (with block): #{p.intg { |x| Math.tan(x + 1) / (x + 1) }}"

  p = Integral.new(0.1, 1, 1_000_000)
  puts "First function (proc function): #{p.intg(&prc)}"

  p = Integral.new(1, 2, 1_000_000)
  puts "Second function (proc function): #{p.intg(&prc_second)}"
else
  p 'Bad input, exit...'
end
