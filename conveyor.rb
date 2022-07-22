class Conveyor
  def produce(product_class:, quantity:, package_source:)
    batch = []

    quantity.times do
      package = package_source.call

      batch << product_class.new(package: package)
    end

    batch
  end
end
