# blocks and procs can capture their surrounding context
# this lets you reference variables from the surrounding scope
# even if you pass the proc to another method

def make_proc
  value = 123
  proc { value }
end

my_proc = make_proc

puts my_proc.call

# this means you can modify the value of a captured variable

count = 0

incrementer = proc { count += 1 }

incrementer.call
incrementer.call

puts count

# lambdas also capture their surrounding context

lambda_incrementer = -> { count += 1 }

lambda_incrementer.call
lambda_incrementer.call

puts count
