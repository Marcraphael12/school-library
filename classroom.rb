class Classroom
  attr_accessor :label, :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student(student)
    @students << student
    student.classroom = self
  end

  def remove_student(student)
    @students.delete(student)
    student.classroom = nil
  end
end
