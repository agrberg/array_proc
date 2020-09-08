class Array
  def to_proc
    proc do |object|
      map { |method| method.to_proc.call(object) }
    end
  end
end
