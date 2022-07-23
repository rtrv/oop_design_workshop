class Package
  attr_reader :cost, :open

  def initialize(cost:)
    @open = true
    @cost = cost
  end

  def open!
    raise if @open

    @open = true
  end

  def open?
    @open
  end

  def close!
    raise unless @open

    @open = false
  end
end
