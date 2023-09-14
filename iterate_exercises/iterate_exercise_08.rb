# John Rexpearl Tumlos
# Iteration Exercise 08
# Using select Method
# Given an array of numbers, write a Ruby program to filter out all the prime numbers using the select method.
require 'prime'
def filter_prime(array)
  array.select { |num| num.prime? ? num : next }
end

print filter_prime([1, 2, 3, 4, 5, 6, 7, 8])