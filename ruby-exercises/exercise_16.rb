# John Rexpearl Tumlos
# Exercise 16 - House Robber

def rob(nums)
  robbed_houses = Array.new
  nums.each_with_index do |num, index|
    if index == 0
      robbed_houses << num
    elsif index % 2 == 0
      robbed_houses << num
    end
  end

  robbed_houses.sum
end

input_1 = [1, 2, 3, 1]
input_2 = [2, 7, 9, 3, 1]

print rob(input_1)