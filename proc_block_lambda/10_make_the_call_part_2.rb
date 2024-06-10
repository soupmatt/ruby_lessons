# you know what else you can make into a proc?
# how about methods?

class MyCaller
  def call_me
    puts "You called?"
  end
end

def call_the_proc
  yield
end

my_caller = MyCaller.new

method_to_call = my_caller.method(:call_me)

call_the_proc(&method_to_call)
