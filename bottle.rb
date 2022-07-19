require './package.rb'
require './bottlecap.rb'

class Bottle < Package

  def initialize
    @cap = Bottlecap.new
  end

  def open!
    # raise 'Not openable'
    @cap = nil
  end

  def open?
    @cap.nil?
  end
end