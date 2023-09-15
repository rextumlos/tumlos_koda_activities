# John Rexpearl Tumlos
# Array Exercise #02
# Write a program to print all unique elements in an array.

arr = [1, 1, 2, 3, 2, 2, 6]

# SOLUTION
def get_uniques(arr)
  duplicates = Array.new
  uniques = Array.new

  arr.each_with_index do |num1, index1|
    arr.each_with_index do |num2, index2|
      if index1 != index2
        if num1 == num2 and !duplicates.include?(num2)
          duplicates << num1
        end
      end
    end
  end

  arr.each_with_index do |num, index|
    if !duplicates.include?(num)
      uniques << num
    end
  end

  uniques
end

print "Unique numbers: #{get_uniques(arr)}"