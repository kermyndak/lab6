# frozen_string_literal: true

require_relative 'part2'

RSpec.describe SecondPart do
  describe 'For len ln() function' do
    it 'Give normal answer with accuracy 1e-3' do
      var = SecondPart.new(1, 2).len_ln
      expect([var[0], var[1]]).to eq([1.222595409781968, 256])
    end

    it 'Give normal answer with accuracy 1e-3' do
      var = SecondPart.new(1, 2, 1e-4).len_ln
      expect([var[0], var[1]]).to eq([1.222088498380465, 2048])
    end
  end
end
