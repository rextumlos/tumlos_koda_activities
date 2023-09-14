# John Rexpearl Tumlos
# Iteration Exercise 10
# Using each and if Conditions
# Given an array of grades (e.g., ["A", "B", "C", "D", "A", "A", "B"]), write a Ruby program to count the number of each grade using the each method and conditional statements.

def grade_counter(grades)
  result = Hash.new
  grades.each do |grade|
    if result.include?(grade)
      result[grade] += 1
    else
      result[grade] = 1
    end
  end

  result
end

print grade_counter(%w[A B C D A A B])