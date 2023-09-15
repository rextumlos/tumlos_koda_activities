# John Rexpearl Tumlos
# Array Exercise #04
# Write a program in C for the subtraction of two matrices.

matrix1 = [[5, 6], [7 ,8]]
matrix2 = [[1, 2], [3, 4]]

# SOLUTION
def subtraction_of_matrices(matrix1, matrix2)
  diff_matrix = Array.new
  matrix1.each_with_index do |arr1, index1|
    matrix2.each_with_index do | arr2, index2|
      if index1 == index2
        diff_arr = Array.new
        arr1.each_with_index do | num1, num_index1|
          arr2.each_with_index do | num2, num_index2|
            if num_index1 == num_index2
              diff_arr << num1 - num2
            end
          end
        end
        diff_matrix << diff_arr
      end
    end
  end

  str_matrix = Array.new
  diff_matrix.each do | arr |
    str_matrix << arr.join(" ")
    str_matrix << "\n"
  end

  str_matrix.join("")
end


print subtraction_of_matrices(matrix1, matrix2)