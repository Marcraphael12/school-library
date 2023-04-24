require './nameable'
require './rental'

class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @rentals = []
  end

  # accessor get method
  attr_reader :id

  # accessor get and set method
  attr_accessor :name, :age, :rentals

  # Public method
  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(date, book, self)
  end

  # private method

  private

  def of_age?
    age >= 18
  end
end
