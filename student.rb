require './person'

class Student < Person
  def initialize(age, classroom, name = 'Unknow student', parent_permission: true)
    super(age, name, parent_permission: parent_permission)
    @classroom = classroom
  end

  attr_reader :classroom

  def play_hooky
    '¯\\_(ツ)_/¯'
  end

  def classroom=(classroom)
    @classroom = classroom
    classroom.student.push(self) unless classroom.student.include?(self)
  end
end
