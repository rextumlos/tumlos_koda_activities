# John Rexpearl Tumlos
# Array Exercise #01

# Write a program to count the total number of duplicate elements in an array.

arr = [1, 1, 2, 3, 2, 2, 3]

# SOLUTION
duplicates = Array.new

arr.each_with_index do |num1, index1|
  arr.each_with_index do |num2, index2|
    if index1 != index2
      if num1 == num2 and !duplicates.include?(num2)
        duplicates << num1
      end
    end
  end
end

print "Total number of duplicates: #{duplicates.length}"