require_relative './person'

class Student < Person
  attr_reader :classroom

  def initialize(name, age, classroom, parent_permission: true)
    super(name, parent_permission)
    @age = age
    @classroom = classroom
  end

  def play_hooky
    '¯\\_(ツ)_/¯'
  end

  def add_classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end
end
