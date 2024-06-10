# you know what else you can make into a proc?
# how about methods?

class MyCaller
  def call
    puts "You called?"
  end
end

def call_the_proc
  yield
end

my_caller = MyCaller.new

call_method = my_caller.method(:call)

call_the_proc(&call_method)
