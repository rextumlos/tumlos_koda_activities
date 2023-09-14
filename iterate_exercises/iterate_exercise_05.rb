# John Rexpearl Tumlos
# Iteration Exercise 05
# Using map Method
# Given an array of strings, write a Ruby program to create a new array that contains the lengths of each string using the map method.


def string_counter(arr_string)
  return arr_string.map {|string| string.length}
end

print string_counter(%w[one two three four five six seven eight nine ten])