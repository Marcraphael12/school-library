require './person'
require './data'
require 'json'

class Peoplemodule
  attr_accessor :people

  def initialize
    #read already saved peoples
    @people = read_people
  end

  def peoplelist
    puts 'Sorry you haven\'t registered any person yet. Go to the dashboard to add one.' if @people.empty?
    @people.each { |person| puts "[#{person.class}], Name: #{person.name}, Age: #{person.age}, Id: #{person.id}" }
  end

  def create_person
    print 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
    option = gets.chomp

    case option
    when '1'
      create_student
    when '2'
      create_teacher
    else
      puts 'invalid input'
    end

    write_people(@people)
    puts 'Person created successfully'
  end

  #create teacher
  def create_teacher
    print 'teacher age: '
    age = gets.chomp

    print 'teacher specialization: '
    specialization = gets.chomp

    print 'teacher name: '
    name = gets.chomp

    teacher = Teacher.new(age, specialization, name, parent_permission: true)
    puts 'Well done! The new Teacher has been added. 👌🏾'
    @people.push(teacher)
  end

  # create a student
  def create_student
    print 'What\'s the student age: '
    age = gets.chomp

    print 'What\'s the student name: '
    name = gets.chomp

    print 'Does the student has parent permission? [Y/N]: '
    # Takes care of the input (always lowercase)
    parent_permission = gets.chomp.downcase

    case parent_permission
    when 'n'
      student = Student.new(age, name, parent_permission: false)
      @people.push(student)
    when 'y'
      student = Student.new(age, name, parent_permission: true)
      @people.push(student)
    end

    write_people(@people)
    puts 'Great, the student has been added successfully 👌🏾'
  end
end
