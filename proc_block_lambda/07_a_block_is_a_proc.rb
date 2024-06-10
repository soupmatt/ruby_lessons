# you probably saw this one coming
# a block is a proc

def block_class(&block)
  block.class
end

puts block_class { "hello from a block" } == Proc
