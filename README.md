Overview
--------

**array_proc** adds the `to_proc` method to the Ruby Array class. This turns the array and its contents to procs which are called independently on an object.

This allows you to send multiple method calls to a single object. My primary usage of this is passing a proc array into `map` to quickly see values or results on an array of objects like

    my_array_of_objects.map(&[:method_1, :method_2])
      # => [[object_1.method_1, object_1.method_2], [object_2.method_1, object_2.method_2], ...]

Setup & Installation
--------------------

Install with `[sudo] gem install array_proc`

Include it in your project's `Gemfile`:

    gem 'array_proc', '~> 1.0'

License
---------

MIT: http://rem.mit-license.org

Errata
------

This is my second gem and a super tiny one at that. I use this method all the time while in irb or the rails console. This is a nice way to avoid having to write this method in every project I use and simply just add a gem. Also, I thought the community might like it and find it useful.

Please feel free to use it for whatever you like except in the assistance of robots or chimpanzees taking over the world. Seriously, they're up to something.
