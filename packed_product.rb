# Abstract
class PackedProduct
  attr_reader :cost, :package, :empty, :tax_category

  def initialize(package:)
    @package = package
  end

  def open!
    raise NotImplemented
  end

  def open?
    raise NotImplemented
  end

  def empty?
    empty
  end
end