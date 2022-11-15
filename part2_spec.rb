# frozend_literal_string: true

require_relative 'part2'

RSpec.describe Integral do
  describe "Class Integral for solution integrals" do
    it 'Give different integralls with blocks' do
      val = Integral.new(1, 11, 1_000_000)
      expect(val.intg { |x| x**2 }).to eq(443.33394331966605)
      expect(val.intg { |x| Math.sin(x) }).to eq(9.999656274076589e-12)
      expect(val.intg { |x| 167 * x }).to eq(-1.836954762138473e-08)
    end

    it 'Give different integralls with lambda functions' do
      first = ->(x) { x**2 }
      second = ->(x) { Math.sin(x) }
      third = ->(x) { 167 * x }
      val = Integral.new(1, 11, 1_000_000)
      expect(val.intg(&first)).to eq(443.33394331966605)
      expect(val.intg(&second)).to eq(9.999656274076589e-12)
      expect(val.intg(&third)).to eq(-1.836954762138473e-08)
    end

    it 'Give different integralls with proc funtions' do
      first = proc { |x| x**2 }
      second = proc { |x| Math.sin(x) }
      third = proc { |x| 167 * x }
      val = Integral.new(1, 11, 1_000_000)
      expect(val.intg(&first)).to eq(443.33394331966605)
      expect(val.intg(&second)).to eq(9.999656274076589e-12)
      expect(val.intg(&third)).to eq(-1.836954762138473e-08)
    end
  end
end