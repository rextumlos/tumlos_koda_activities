# John Rexpearl Tumlos
# Array Exercise #03
# Write a program for a 2D array of size 3x3 and print the matrix.

matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# SOLUTION
str_matrix = Array.new
matrix.each do | arr |
  str_matrix << arr.join(" ")
  str_matrix << "\n"
end

print str_matrix.join("")
