# John Rexpearl Tumlos
# Exercise 10 - Contains Duplicate

input_1 = [1, 2, 3, 1]
input_2 = [1, 2, 3, 4]

def containsDuplicate(nums)
  unique_elements = Array.new
  nums.each do |num|
    unless unique_elements.include?(num)
      unique_elements << num
    else
      return true
    end
  end

  false
end

print containsDuplicate(input_2)