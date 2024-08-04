# frozen_string_literal: true

# Adds `Array#to_proc` to allow multiple method calls on each element of an enumerable using the `&` shorthand
class Array
  def to_proc
    proc do |object|
      map { |method| method.to_proc.call(object) }
    end
  end
end
