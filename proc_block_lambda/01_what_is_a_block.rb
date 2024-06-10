# It's a bit of code that you can pass to functions like `each` and `map`.
# It works a lot like callback functions in javascript.

# single line block
# The `{}` is used to define a single-line block.
[1, 2, 3, 4, 5].each { |num| print "#{num} " }

# multi line block
# The `do` and `end` keywords are used to define a multi-line block.
[1, 2, 3, 4, 5].map do |num|
  num * 2
end
