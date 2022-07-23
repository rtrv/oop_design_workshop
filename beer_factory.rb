require './factory.rb'
require './beer.rb'
require './conveyor.rb'
require './container.rb'

class BeerFactory < Factory
  PRODUCT_CLASS = Beer

  # def initialize(**args)
  #   # TODO:
  #   @permissions = []

  #   super(**args)
  # end

  # def place_order(quantity:, product_class:)
    
  # end

  # private

  def produce!(quantity:, container: Container, conveyor_class: Conveyor)
    package_source = container.new(package_class: Bottle, limit: 1000, cost: 13)
    conveyor = conveyor_class.new(product_class: Beer, package_source: package_source)

    batch = conveyor.produce(quantity: quantity)

    @produced_goods += batch
    batch
  end
end
