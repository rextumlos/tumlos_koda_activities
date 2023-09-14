# John Rexpearl Tumlos
# Iteration Exercise 02
# Using each Method
# Given an array of integers, write a Ruby program to find the product of all the positive numbers in the array using the each method.

array = [1, -2, 4, 0, 2, -4, 5]
product = 1

array.each do |num|
  if num > 0
    product *= num
  end
end

print product