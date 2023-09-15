# John Rexpearl Tumlos
# Array Exercise #03
# Write a program for a 2D array of size 3x3 and print the matrix.

array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# SOLUTION
def matrix(array)
  str_matrix = Array.new
  array.each do | arr |
    str_matrix << arr.join(" ")
    str_matrix << "\n"
  end

  str_matrix.join("")
end

print matrix(array)
