# John Rexpearl Tumlos
# Iteration Exercise 06
# Using each_with_index Method
# Write a Ruby program that takes an array of names and prints each name along with its index using the each_with_index method.

def name_and_index(names)
  names.each_with_index do | name, index |
    puts "Index: #{index} Name: #{name} "
  end
end

name_and_index(%w[rex robie jiati shine august])