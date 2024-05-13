require "active_support/all"

module MyMethodWrapper
  extend ActiveSupport::Concern

  included do
    @_my_method_wrapper_hook_module = Module.new
    prepend @_my_method_wrapper_hook_module
  end

  module ClassMethods
    def wrap_method(method_name)
      @_my_method_wrapper_hook_module.module_eval do
        define_method method_name do |*args, &block|
          puts "Before #{method_name}"
          result = super(*args, &block)
          puts "After #{method_name}"
          result
        end
      end
    end
  end
end
