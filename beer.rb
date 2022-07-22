require 'forwardable'
require './packed_product.rb'
require './bottle.rb'

class Beer < PackedProduct
  attr_reader :cost, :package, :empty, :tax_category

  extend Forwardable
  # include Drinkable
  def_delegators :@package, :open?, :open!

  def initialize(package:)
    @cost = 2
    @empty = false
    @tax_category = :alcohol

    super
  end

  # Probably SRP violation
  def drink!
    # raise if empty
    raise if @empty
    # raise if closed
    raise unless open?
    @empty = true
    puts "I'm now empty"
  end
end