# John Rexpearl Tumlos
# Exercise 5: Majority Element

def majorityElement(nums)
  hash_counter = Hash.new
  nums.each do |num|
    if hash_counter.include?(num)
      hash_counter[num] += 1
    else
      hash_counter[num] = 1
    end
  end

  print hash_counter.max_by{|key, value| value}[0]
end

input_1 = [3, 2, 3]
input_2 = [2, 2, 1, 1, 1, 2, 2]

majorityElement(input_2)