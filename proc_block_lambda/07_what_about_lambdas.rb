# lambdas are a lot like blocks and procs, but with a few key differences.
# First, we define a lambda with the `lambda` keyword or the `->` operator.
# a lambda define with `->` is called a stabby lambda.
# Looks a lot like an anonymous javascript function

l1 = lambda { |x| x * 2 }
l2 = ->(x) { x * 3 }

l1.call(2)

l2.call(2)

# labmdas also don't like extra arguments

def too_many_args
  yield 1, 2, 3
end

too_many_args(&l1)

# lambdas also don't like missing arguments

def too_few_args
  yield
end

too_few_args(&l2)

# lambdas also allow return statements!

check_arg = lambda do |arg|
  if arg.nil?
    return "You passed nil as the argument!"
  end
  "You passed an argument! #{arg}"
end

check_arg.call(nil)

# but guess what lambdas have in common with blocks and procs?
# they also as procs

my_lambda = lambda { |x| x * 2 }

my_lambda.is_a?(Proc)

# so lambdas are procs, but with a few extra features
# how do you tell if a proc is a lambda or not?
# you can use the `lambda?` method

my_lambda = lambda { |x| x * 2 }
my_lambda.lambda?

my_proc = proc { |x| x * 2 }
my_proc.lambda?
