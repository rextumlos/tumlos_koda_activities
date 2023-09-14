# John Rexpearl Tumlos
# Array Exercise #06
# Write a Ruby program to search items start with specified string of a given array.

orig_array = ["abcde", "abdf", "adeab", "abdgse", "bdefa", "bacdef"]

def finder(array, start)
  return array.select{|words| words[/^#{start}/]}
end

p finder(orig_array, "ab")