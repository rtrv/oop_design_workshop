class Container
  attr_reader :limit, :package_class

  # def reset_limit
  #   @limit
  # end

  def initialize(package_class:, limit:)
    @package_class = package_class
    @limit = limit
  end

  def call
    raise "I'm empty" if @limit.zero?

    @package_class.new

    @limit -= 1
  end

  private

  # attr_reader :some_value

  # def some_complex_stuff
  #   # TODO: Use some_value
  #   puts 'Doing complex job...'
  # end
end
