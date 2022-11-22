# frozen_string_literal: true

require_relative 'part2'

RSpec.describe SecondPart do
  describe 'For len ln() function' do
    it 'Give normal answer with accuracy 1e-3' do
      var = SecondPart.new(1, 2).len_ln
      expect([var[-1], 2**(var.size + 1)]).to eq([1.2231761563869896, 128])
    end

    it 'Give normal answer with accuracy 1e-3' do
      var = SecondPart.new(1, 2, 1e-4).len_ln
      expect([var[-1], 2**(var.size + 1)]).to eq([1.2221608433295241, 1024])
    end
  end
end
