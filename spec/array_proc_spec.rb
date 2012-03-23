require File.join(File.dirname(__FILE__), 'spec_helper')

describe Array do
  describe '#to_proc' do
    it 'should return a proc when called on an array' do
      [].to_proc.should be_a(Proc)
    end

    it 'should turn all items in the array to procs' do
      mock_obj = mock(Object)
      mock_obj.should_receive(:some_method)
      [:some_method].to_proc.call(mock_obj)
    end

    it 'should return an array of the results of procs' do
      proc = [:empty?, :to_i].to_proc
      proc.call('5').should ==([false, 5])
    end

    it 'should be usable in a map as an & proc to see the objects' do
      mock_1 = mock(:method_1 => 5, :method_2 => 10)
      mock_2 = mock(:method_1 => 1, :method_2 => 2)
      [mock_1, mock_2].map(&[:method_1, :method_2]).should ==([[5, 10], [1, 2]])
    end
  end
end