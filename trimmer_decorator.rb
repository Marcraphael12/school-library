require_relative './base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    name = @nameable.correct_name
    name_trimed = "#{name[0...10].strip}..." if name.length > 10
    name_trimed
  end
end
