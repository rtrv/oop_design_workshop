require './package.rb'
require './bottlecap.rb'

class Bottle < Package
  def open!
    @cap = nil

    super
  end

  def close!
    @cap = Bottlecap.new

    super
  end
end