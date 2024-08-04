# frozen_string_literal: true

require File.join(File.dirname(__FILE__), 'spec_helper')

describe Array do
  describe '#to_proc' do
    it 'returns a proc when called on an array' do
      expect([].to_proc).to be_a(Proc)
    end

    it 'returns an array of the results of calling each proc on the object' do
      expect(%i[empty? to_i].to_proc.call('5')).to eq [false, 5]
    end

    it 'is intended for `&` shorthand to explore objects' do
      expect([0, 5].map(&%i[zero? even?])).to eq [[true, true], [false, false]]
    end
  end
end
