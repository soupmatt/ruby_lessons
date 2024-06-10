# The yield keyword is used to call a block that was passed to a method.
# This is how methds like `each` and `map` work.

def print_phrase
  yield
end
print_phrase { puts "You're going to need a bigger boat." }

# you can yield multiple times

def double_yield
  yield
  yield
end
double_yield { puts "Do I have to repeat myself?" }

# you can also pass arguments to yield
# the arguments will be passed to the block

def double
  yield 2
end
double { |x| puts x * 2 }

# blocks don't get too bothered if you pass too many arguments
# they just ignore the extra ones

double { puts "hi mom!" }

# or if you pass too few arguments
# they just set the missing ones to nil

double do |x, y|
  puts x.inspect
  puts y.inspect
end

# you can also check if a block was passed to a method
# by using the block_given? method

def has_block?
  if block_given?
    puts "block given"
  else
    puts "no block"
  end
end

has_block?
has_block? { puts "hello" }

# you can also pass a block to another method
# by using the `&` operator

def pass_block(&block)
  block.call
end

pass_block { puts "hello from a block" }

# you can also pass a block to a method that expects a block
# by using the `&` operator

def pass_block_to_block(&)
  pass_block(&)
end

pass_block_to_block { puts "hello from a block passed to a block" }

# you can also pass a block to a method that doesn't expect a block
# by using the `&` operator

def pass_block_check
  if block_given?
    yield
  else
    puts "no block"
  end
end

pass_block_check { puts "hello from a block passed to a method that checks for the block" }

pass_block_check
