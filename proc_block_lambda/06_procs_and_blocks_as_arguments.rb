# you can capture a block as a proc object using the `&` operator in the method signature

def my_method(&block)
  block
end

proc_arg = my_method { puts "hello from a block" }

# you can then call the block using the `call` method

proc_arg.call

# You can also pass procs as arguments to methods using this.

my_proc = proc { |x| x * 2 }

result = my_method(&my_proc)

# result is the same thing as my_proc
puts result == my_proc
