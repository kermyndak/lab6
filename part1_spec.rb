# frozen_string_literal: true

require_relative 'part1'

RSpec.describe FirstPart do
  describe 'For len ln() function' do
    it 'Give normal answer with accuracy 1e-3' do
      var = FirstPart.new(1, 2)
      expect(var.len_ln).to eq([1.222595409781968, 256])
    end

    it 'Give normal answer with accuracy 1e-3' do
      var = FirstPart.new(1, 2, 1e-4)
      expect(var.len_ln).to eq([1.222088498380465, 2048])
    end
  end
end
