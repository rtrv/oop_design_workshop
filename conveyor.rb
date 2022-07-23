class Conveyor
  def initialize(product_class:, package_source:)
    @product_class = product_class
    @package_source = package_source
  end

  def produce(quantity:)
    batch = []

    quantity.times do
      package = get_package

      product = create_product(package)

      close_package(package)

      batch << product
    end

    batch
  end

  # def product
  #   product = @product
  #   reset
  #   product
  # end

  def get_package
    @package_source.call
  end

  def create_product(open_package)
    raise unless open_package.open?

    @product_class.new(package: open_package)
  end

  def close_package(open_package)
    open_package.close!
  end
end
