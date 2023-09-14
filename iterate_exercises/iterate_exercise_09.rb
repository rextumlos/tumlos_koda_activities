# John Rexpearl Tumlos
# Iteration Exercise 09
# Using reduce Method
# Write a Ruby program that calculates the factorial of a given number using the reduce method.

def factorial(num)
  (1..num).reduce(1) { |product, num| num * product}
end

print factorial(10)