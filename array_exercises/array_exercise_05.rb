# John Rexpearl Tumlos
# Array Exercise #05
# Write a program to calculate the largest gap between sorted elements of an array of integers.
orig_array = [23, -2, 45, 38, 12, 4, 6]

# SOLUTION
sorted_arr = orig_array.sort
puts "Sorted Array: #{sorted_arr}"

diff_arr = Array.new
sorted_arr.each_with_index do | num, index|
  if sorted_arr[index + 1]
    diff_arr << sorted_arr[index + 1] - num
  end
end

p diff_arr.max()