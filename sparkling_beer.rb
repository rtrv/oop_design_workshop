require './beer.rb'
require 'pry'
class SparklingBeer < Beer
  attr_accessor :beer

  extend Forwardable
  # include Drinkable
  def_delegators :@package, :open?, :open!

  def initialize(beer)
    @beer = beer
  end

  def drink!
    puts "I'm sparkling"
    binding.pry
    super
  end
end
