class Factory
  PRODUCT_CLASS = nil

  attr_reader :produced_goods

  def initialize(name:)
    
    @name = name
    @produced_goods = []
  end

  # TODO: why bang?
  def produce!(quantity:, product_class:)
    batch = []

    quantity.times do
      batch << product_class.new
    end

    @produced_goods += batch
    batch
  end
end