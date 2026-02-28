`Array#to_proc`
===============

[![CI](https://github.com/agrberg/array_proc/actions/workflows/ci.yml/badge.svg)](https://github.com/agrberg/array_proc/actions/workflows/ci.yml)
[![Gem Version](https://badge.fury.io/rb/array_proc.svg)](https://badge.fury.io/rb/array_proc)

`array_proc` extends Ruby's `Array` class with a `to_proc` method, allowing you to call multiple methods on each element of an enumerable using the `&` shorthand syntax.

```ruby
objects.map(&[:method_1, :method_2])

# is equivalent to the more verbose

objects.map { |element| [element.method_1, element.method_2] }
```

### Example

Examining properties of numbers

```ruby
[0, 5].map(&[:zero?, :even?])
  # => [[true, true], [false, false]]
```

Errata
------

Similar to its counterpart, [`string_proc`](https://github.com/agrberg/string_proc), I recommend caution using this in production code. It's non-idiomatic Ruby and may cause more confusion than convenience. However, it can be a valuable tool for exploring and debugging objects in a REPL. For that reason, I often include it in my `Gemfile` with `require: false` ensuring that it won't be unintentionally used in code without explicitly requiring it via `require 'array_proc'`.

This is one of the first small gems I published, as it provides functionality that I find useful across multiple projects. By packaging it as a gem, I can avoid duplicating the code and reduce the need for repetitive testing in each project.

Installation
--------------------

Include it in your project's `Gemfile`:

```ruby
gem 'array_proc'
```

License
---------

MIT: https://mit-license.org/
