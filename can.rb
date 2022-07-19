require './package.rb'

class Can < Package
  def open!
    @open = true
  end

  def open?
    @open
  end
end
