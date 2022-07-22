requre './conveyor.rb'

class BottleConveyor < Conveyor
  quantity.times do
    batch << PRODUCT_CLASS.new
  end
end
