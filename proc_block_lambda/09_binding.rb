# how do procs track the context that they are from?
# They use an instance of the Binding class
require "pry"

class MyInspector
  def initialize(ivar)
    @ivar = ivar
  end

  def make_proc
    value = 123
    proc { value }
  end
end

my_inspector = MyInspector.new(456)

def inspect_proc(&block)
  binding.pry
  yield
end

inspect_proc(&my_inspector.make_proc)
