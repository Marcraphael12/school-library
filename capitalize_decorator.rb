require_relative './base_decorator'
require_relative './person'

class CapitalizeDecorator < BaseDecorator
  def initialize(nameable)
    super
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name.capitalize
  end
end
