# procs can also be executed with the #call method

double_proc = proc { |num| num * 2 }

puts double_proc.call(2)

# you can also use the `[]` operator to call a proc

puts double_proc[21]

# you can also use the `===` operator to call a proc

puts double_proc === 4

# don't do this. The `===` is used by case statements to compare objects
# so this is just confusing

num = 4
puts case num
when double_proc
  "it's a double"
else
  "it's not a double"
end
