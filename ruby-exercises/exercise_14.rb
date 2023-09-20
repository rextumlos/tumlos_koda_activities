# John Rexpearl Tumlos
# Exercise 14 - Move Zeroes

input_1 = [0, 1, 0, 3, 12]
input_2 = [0]

def moveZeroes(nums)
  nums.each_with_index do |num, index|
    if num == 0
      nums.delete_at(index)
      nums << 0
    end
  end
end

print moveZeroes(input_1)