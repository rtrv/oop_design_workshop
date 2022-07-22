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

  def place_order(quantity:, product_class:)
    
  end

  private

  def produce!(quantity:, container: Container, conveyor: Conveyor)
    package_source = container.new(package_class: Bottle, limit: 1000)

    batch = conveyor.new.produce(product_class: Beer, quantity: quantity, package_source: package_source)

    @produced_goods += batch
    batch
  end
end
