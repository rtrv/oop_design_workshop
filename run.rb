require './beer_factory.rb'

batch = BeerFactory.new(name: 'Craft Beer Factory').produce! quantity: 9

puts "Batch size is #{batch.size}"
