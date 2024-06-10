# standard:disable Lint/RedundantReturn
# why does the block do that?
# lambda return statements are scoped to the lambda itself
# block return statements are scoped to the blocks binding
# this can lead to some weird stuff that doesn't work as expected

require "pry"

class MyCoolClass
  @blocks = []

  def self.add_block(&block)
    @blocks << block
  end

  def self.run_blocks
    # binding.pry
    @blocks.each do |block|
      puts block.call
    end
  end

  my_lambda = -> do
    puts "lambda"
    return 1
  end
  add_block(&my_lambda)

  add_block do
    puts "block without return"
    2
  end

  add_block do
    puts "block with return"
    return 3
  end
end

MyCoolClass.run_blocks

# standard:enable Lint/RedundantReturn
