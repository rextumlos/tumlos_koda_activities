# John Rexpearl Tumlos
# Hash Exercise #05
# Filtering Hash by Threshold
#
# You are given a hash where keys represent items, and values represent their respective quantities. Write a Ruby program that filters the hash, removing key-value pairs for items with quantities below a specified threshold.
#
# For example, given the following hash:
inventory = {
  "apple" => 5,
  "banana" => 3,
  "orange" => 7,
  "grape" => 1,
  "kiwi" => 0
}
# Your program should be able to perform the following type of filtering:
# Filter by Threshold
threshold = 3
# If the threshold is set to 3, your program should remove key-value pairs for items with quantities less than 3. In this case, the filtered hash should look like this:
# {
#   "apple" => 5,
#   "orange" => 7
# }

def filtering_by_threshold(data, threshold)
  filtered_data = Hash.new
  data.each do |key, value|
    if value > threshold
      filtered_data[key] = value
    end
  end

  return filtered_data
end

print filtering_by_threshold(inventory, threshold)