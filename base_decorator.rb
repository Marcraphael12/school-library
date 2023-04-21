require_relative './nameable'

class BaseDecorator < Nameable
  def initialize (nameable)
    super()
    @neameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
