# remember when I said that you can't put a return statement in a block?
# I lied. In certain circumstances you can, but it doesn't behave the way you might expect.

def with_a_block
  puts "before the block"
  value = [1, 2, 3].map do |x|
    if x == 2
      return "I'm out of here"
    end
    x * 2
  end
  puts "after the block"
  value
end

puts with_a_block

# things work as expected if you use a lambda instead of a block or proc
puts
puts

def with_a_lambda
  puts "before the lambda"
  stabby = ->(x) do
    if x == 2
      return "I'm out of here"
    end
    x * 2
  end
  value = [1, 2, 3].map(&stabby)
  puts "after the lambda"
  value
end

puts with_a_lambda
