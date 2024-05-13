require_relative "my_method_wrapper"

class MyCoolClass
  include MyMethodWrapper

  wrap_method :foo
  wrap_method :bar

  def foo
    puts "foo"
  end

  def bar
    puts "bar"
  end
end
