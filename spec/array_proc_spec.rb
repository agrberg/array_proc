# frozen_string_literal: true

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

    it 'works with a single-element array' do
      expect([1, 2, 3].map(&[:even?])).to eq [[false], [true], [false]]
    end

    it 'raises NoMethodError for elements that do not respond to to_proc' do
      expect { ['empty?', 'length'].to_proc.call('hello') }.to raise_error(NoMethodError)
    end

    it 'works with lambdas and procs in the array' do
      double_it = ->(x) { x * 2 }
      expect([double_it, :to_s].to_proc.call(5)).to eq [10, '5']
    end

    it 'raises NoMethodError for invalid methods' do
      expect { [:nonexistent_method].to_proc.call('hello') }.to raise_error(NoMethodError)
    end

    it 'works with flat_map to flatten results' do
      expect(%w[hello world].flat_map(&%i[upcase reverse])).to eq %w[HELLO olleh WORLD dlrow]
    end

    it 'returns an empty array for an empty method list' do
      expect([].to_proc.call('anything')).to eq []
    end
  end
end
