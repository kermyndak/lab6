# frozen_string_literal: true

require_relative 'part1'
require_relative 'part2'

printf 'Select part (1..2): '
sel = gets
sel = sel.match?(/^[1-2]$/) ? Integer(sel) : 0
case sel
when 1
  
when 2
  first = ->(x) { Math.sin(x) / x }
  second = ->(x) { Math.tan(x + 1) / (x + 1) }

  p = Integral.new(0.1, 1, 1_000_000)
  puts "First function (lambda function): #{p.intg(&first)}"
  p = Integral.new(1, 2, 1_000_000)
  puts "Second function (lambda function): #{p.intg(&second)}"
  p = Integral.new(0.1, 1, 1_000_000)
  puts "First function (with block): #{p.intg { |x| Math.sin(x) / x }}"
  p = Integral.new(1, 2, 1_000_000)
  puts "Second function (with block): #{p.intg { |x| Math.tan(x + 1) / (x + 1) }}"
else
  p 'Bad input, exit...'
end
