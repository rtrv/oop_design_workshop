class Container
  attr_reader :limit, :package_class

  # def reset_limit
  #   @limit
  # end

  def initialize(package_class:, limit:, cost:)
    @package_class = package_class
    @limit = limit
    @cost = cost
  end

  def call
    raise "I'm empty" if @limit.zero?

    @limit -= 1

    @package_class.new(cost: @cost)
  end

  private

  # attr_reader :some_value

  # def some_complex_stuff
  #   # TODO: Use some_value
  #   puts 'Doing complex job...'
  # end
end
