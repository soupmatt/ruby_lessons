# let's inspect our blocks and procs and see how they differ
require "pry"

# standard:disable Lint/Debugger
def block_inspector(&block)
  binding.pry
  block
end
# standard:enable Lint/Debugger

block_inspector { |num| num * 2 }

double_proc = proc { |num| num * 2 }
block_inspector(&double_proc)
