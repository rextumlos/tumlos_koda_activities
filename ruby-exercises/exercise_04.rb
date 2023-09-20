# John Rexpearl Tumlos
# Exercise 4: Single Number
# Each values have duplicates, find the unique one

input_1 = [2, 2, 1]
input_2 = [4, 1, 2, 1, 2]
input_3 = [1]

def singleNumber(nums)
  nums.each_with_index do |num1, index1|
    nums.each_with_index do |num2, index2|
      if index1 != index2
        if num1 == num2
          nums.delete(num1)
        end
      end
    end
  end

  print nums[0]
end

singleNumber(input_2)