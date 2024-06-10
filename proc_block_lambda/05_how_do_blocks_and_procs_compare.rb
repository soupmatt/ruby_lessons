# let's inspect our blocks and procs and see how they differ
require "pry"

def block_inspector(&block)
  binding.pry
  block
end

block_inspector { |num| num * 2 }

double_proc = proc { |num| num * 2 }
block_inspector(&double_proc)
