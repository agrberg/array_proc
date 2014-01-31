require File.join(File.dirname(__FILE__), 'spec_helper')

describe Array do
  describe '#to_proc' do
    it 'should return a proc when called on an array' do
      [].to_proc.should be_a(Proc)
    end

    it 'should turn all items in the array to procs' do
      double_obj = double(Object)
      double_obj.should_receive(:some_method)

      [:some_method].to_proc.call(double_obj)
    end

    it 'should return an array of the results of procs' do
      proc = [:empty?, :to_i].to_proc
      proc.call('5').should == [false, 5]
    end

    it 'should be usable in a map as an & proc to see the objects' do
      double_1 = double(:method_1 => 5, :method_2 => 10)
      double_2 = double(:method_1 => 1, :method_2 => 2)
      [double_1, double_2].map(&[:method_1, :method_2]).should == [[5, 10], [1, 2]]
    end
  end
end
