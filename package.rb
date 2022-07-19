class Package
  attr_reader :cost, :open

  def open!
    raise NotImplemented
  end

  def open?
    raise NotImplemented
  end
end
