# John Rexpearl Tumlos
# Exercise 8 - Search Insert Position in Sorted Array

def searchInsert(nums, target)
  if nums.include?(target)
    nums.find_index(target)
  else
    nums.each_with_index do |num, index|
      if target < num
        return index
      elsif nums.length - 1 == index
        return nums.length
      end
    end
  end
end

input = [1, 3, 5, 6]
target_1 = 5
target_2 = 2
target_3 = 7

print searchInsert(input, target_3)

