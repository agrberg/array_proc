class Array
  def to_proc
    proc {|object| map {|method| method.to_proc.call(object) } }
  end
end