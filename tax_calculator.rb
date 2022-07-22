class TaxCalculator
  TAX_COEFFICIENTS = {
    alcohol: 0.2,
    non_alcohol: 0.1
  }

  def initialize(factory:)
    @factory = factory
  end

  def calculate
    # TODO: factory can produce different types of products

    total_cost = @factory.produced_goods.sum &:cost

    total_cost * TAX_COEFFICIENTS[@factory.produced_goods.first.tax_category]
  end
end
