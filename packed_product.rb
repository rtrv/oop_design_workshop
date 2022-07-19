# Abstract
class PackedProduct
  attr_reader :cost, :package, :empty

  def initialize; end

  def open
    raise NotImplemented
  end

  def open?
    raise NotImplemented
  end

  def empty?
    empty
  end
end