class Container
  attr_reader :limit

  def reset_limit
    some_complex_stuff
  end

  private

  attr_reader :some_value

  def some_complex_stuff
    # TODO: Use some_value
    puts 'Doing complex job...'
  end
end
