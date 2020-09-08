require File.join(File.dirname(__FILE__), 'spec_helper')

describe Array do
  describe '#to_proc' do
    it 'returns a proc when called on an array' do
      expect([].to_proc).to be_a(Proc)
    end

    it 'turns all items in the array to procs' do
      double_obj = spy(Object)
      [:some_method].to_proc.call(double_obj)

      expect(double_obj).to have_received(:some_method)
    end

    it 'returns an array of the results of calling each proc on the object' do
      proc = [:empty?, :to_i].to_proc

      expect(proc.call('5')).to eq [false, 5]
    end

    it 'is usable in a map as an `&`` proc to see the objects' do
      double_1 = double(method_1: 5, method_2: 10)
      double_2 = double(method_1: 1, method_2: 2)

      expect([double_1, double_2].map(&[:method_1, :method_2])).to eq [[5, 10], [1, 2]]
    end
  end
end
