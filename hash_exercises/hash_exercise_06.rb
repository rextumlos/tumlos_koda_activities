# John Rexpearl Tumlos
# Hash Exercise #06
# Student Grouping
#
# You are given an array of student objects, where each student has a name and a grade. Write a Ruby program that groups the students by their grades into a hash where the keys are the grades, and the values are arrays of student names belonging to that grade.
# For example, given the following array of student objects:
students = [
  { name: "Alice", grade: "A" },
  { name: "Bob", grade: "B" },
  { name: "Charlie", grade: "A" },
  { name: "David", grade: "C" },
  { name: "Eve", grade: "B" },
  { name: "Frank", grade: "A" },
  { name: "Grace", grade: "C" }
]

# Your program should produce the following hash:
# {
#   "A" => ["Alice", "Charlie", "Frank"],
#   "B" => ["Bob", "Eve"],
#   "C" => ["David", "Grace"]
# }

def student_grouping(students)
  grouped_by_grade = Hash.new
  students.each do |student|
    student_name = ""
    student.each do | key, value |
      if key == :name
        student_name = value
      elsif key == :grade
        if grouped_by_grade.include?(value)
          grouped_by_grade[value] += [student_name]
        else
          grouped_by_grade[value] = [student_name]
        end
      end
    end
  end

  return grouped_by_grade
end

print student_grouping(students)

