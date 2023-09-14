# John Rexpearl Tumlos
# Conditional Exercise 04
# Grade Calculator:
# Create a program that takes a numeric grade as input and prints the corresponding letter grade (e.g., A, B, C, D, or F).

def grade_calculator(grade)
  case grade
  when 95..100
    return "A"
  when 90...95
    return "B"
  when 85...90
    return "C"
  when 80...85
    return "D"
  when 0...80
    return "F"
  else
    return "Invalid grade."
  end
end

print grade_calculator(96)