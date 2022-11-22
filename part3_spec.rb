# frozen_string_literal: true

require_relative 'part3'

RSpec.describe Integral do
  describe 'Class Integral for solution integrals' do
    it 'Give different integralls with blocks' do
      val = Integral.new(1, 11, 1_000_000)
      expect(val.intg { |x| x**2 }).to eq(443.33394331966605)
      expect(val.intg { |x| Math.sin(x) }).to eq(9.999656274076589e-12)
    end

    it 'Give different integralls with lambda functions' do
      first = ->(x) { x**2 }
      val = Integral.new(1, 11, 1_000_000)
      expect(val.intg(&first)).to eq(443.33394331966605)
    end

    it 'Give different integralls with proc funtions' do
      first = proc { |x| x**2 }
      second = proc { |x| Math.sin(x) }
      val = Integral.new(1, 11, 1_000_000)
      expect(val.intg(&first)).to eq(443.33394331966605)
      expect(val.intg(&second)).to eq(9.999656274076589e-12)
    end
  end
end
