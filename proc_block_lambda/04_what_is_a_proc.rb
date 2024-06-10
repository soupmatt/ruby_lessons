# a proc is like a block that you can store in a variable.
# the `proc` method is used to convert a block into a proc.
# You can also use Proc.new to create a proc.
require "pry"

double_proc = proc { |num| num * 2 }

# you can then pass a proc to a method that expects a block using the `&` operator

(1..5).map(&double_proc)
