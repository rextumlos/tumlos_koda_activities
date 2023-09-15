# John Rexpearl Tumlos
# Class Exercise 02
# Class for Student:
# Define a Ruby class called Student to represent students. Each student should have attributes like name, age, and grade. Implement a method to determine if a student is eligible for the honor roll (e.g., if their grade is above a certain threshold).

class Student
  attr_accessor :name, :age, :grade
  def initialize(name, age, grade)
    @name = name
    @age = age
    @grade = grade
  end

  def is_honor_roll?
    if @grade >= 3.5
      true
    else
      false
    end
  end

  def to_s
    puts "#{@name}, #{@age}, #{@grade}"
  end
end

# Create two student objects
student1 = Student.new("Alice", 17, 4.0)
student2 = Student.new("Bob", 16, 3.2)

# Check if students are on the honor roll
puts "#{student1.name} is on the honor roll: #{student1.is_honor_roll?}"
puts "#{student2.name} is on the honor roll: #{student2.is_honor_roll?}"