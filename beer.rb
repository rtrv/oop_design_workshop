require 'forwardable'
require './packed_product.rb'
require './bottle.rb'

class Beer < PackedProduct
  attr_reader :cost, :package, :empty

  extend Forwardable
  def_delegators :@package, :open?, :open!

  def initialize
    @cost = 2
    @package = Bottle.new
    @empty = false
  end

  def drink!
    # raise if empty
    raise if @empty
    # raise if closed
    raise unless open?
    @empty = true
    puts "I'm now empty"
  end
end