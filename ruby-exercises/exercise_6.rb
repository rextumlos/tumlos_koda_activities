# John Rexpearl Tumlos
# Exercise 6 - Remove duplicates from Sorted Array

input_1 = [1, 1, 2]
input_2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]

def removeDuplicates(nums)
  filtered_arr = Array.new
  nums.each do |num|
    unless filtered_arr.include?(num)
      filtered_arr << num
    end
  end

  k = filtered_arr.length
  blank_indices = nums.length - k

  blank_indices.times { || filtered_arr << "_"}

  "#{k}, #{filtered_arr}"
end

print removeDuplicates(input_2)