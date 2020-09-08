`Array#to_proc`
===============

Overview
--------

`array_proc` adds the `to_proc` method to the Ruby `Array` class. This turns the array's contents into individual `proc`s which are each called on an object.

This allows you to send multiple method calls to a single object. Example usage: passing a proc array into `map` to quickly see values or results on an array of objects like

```
my_array_of_objects.map(&[:method_1, :method_2])
  # => [
         [object_1.method_1, object_1.method_2],
         [object_2.method_1, object_2.method_2],
         ...
       ]
```

Setup & Installation
--------------------

Include it in your project's `Gemfile`:

    gem 'array_proc'

License
---------

MIT: http://rem.mit-license.org

Errata
------

This is the second small gem I published. I use this method in `irb` or the rails console to inspect objects. Like it's cousin [`string_proc`](https://github.com/agrberg/string_proc) it is not intended for production code as it's non-idiomatic Ruby.
