require 'spec_helper'

describe Classroom do
  before :each do
    @classroom = Classroom.new 'Lable'
  end

  describe '#new' do
    it 'takes one parameters and returns a classroom object' do
      @classroom.should be_an_instance_of Classroom
    end
  end

  describe '#lable' do
    it 'returns the correct lable' do
      @classroom.label.should eql 'Lable'
    end
  end

  describe '#Create test for add_student method' do
    it 'Should return two student' do
      # create two students
      marc = Student.new(23, 'marc', parent_permission: true)
      rita = Student.new(20, 'rita', parent_permission: false)

      # add the students to the classroom
      @classroom.add_student(marc)
      @classroom.add_student(rita)
      expect(@classroom.students.length).to eql 2
    end

    it 'Should return the classroom of the student' do
      marc = Student.new(23, 'marc', parent_permission: true)
      @classroom.add_student(marc)
      expect(marc.classroom).to eql @classroom
    end
  end
end
