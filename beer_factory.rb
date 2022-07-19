require './factory.rb'
require './beer.rb'

class BeerFactory < Factory
  PRODUCT_CLASS = Beer

  # def initialize(**args)
  #   # TODO:
  #   @permissions = []

  #   super(**args)
  # end

  def produce!(quantity:)
    batch = []

    quantity.times do
      batch << PRODUCT_CLASS.new
    end

    @produced_goods += batch
    batch
  end
end
