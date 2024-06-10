# blocks have an implicit return
# they return the value of the last expression in the block

[1, 2, 3].map do |x|
  x * 2
end

# in fact, if you try to use an explicit return, you will get an error
[1, 2, 3].each do |x|
  return x * 2
end
