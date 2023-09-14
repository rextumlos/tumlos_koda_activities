# John Rexpearl Tumlos
# Hash Exercise #08
# Deep Merge for Nested Hashes
#
# You are given two nested hashes, hash1 and hash2, where each hash may contain nested hashes as values. Write a Ruby program to merge these two hashes deeply, combining their nested structures and ensuring that values from hash2 override values from hash1 if there are conflicting keys.
#
# For example, given the following two nested hashes:
hash1 = {
  "name" => "John",
  "address" => {
    "street" => "123 Main St",
    "city" => "New York"
  },
  "scores" => [95, 88, 92]
}
hash2 = {
  "name" => "Alice",
  "address" => {
    "city" => "Los Angeles",
    "zipcode" => "90001"
  },
  "scores" => [98, 87]
}
#
# Your program should produce the following merged hash, where values from hash2 override values from hash1:
# {
#   "name" => "Alice",
#   "address" => {
#     "street" => "123 Main St",
#     "city" => "Los Angeles",
#     "zipcode" => "90001"
#   },
#   "scores" => [98, 87, 92]
# }

def array_overriding(large_arr, short_arr)
  override_array = Array.new
  large_arr.each_with_index do |data1, index1|
    short_arr.each_with_index do |data2, index2|
      if index1 == index2
        override_array[index1] = data2
      end
    end

    if index1 >= short_arr.length
      override_array[index1] = data1
    end
  end

  return override_array
end

def deep_merge(hash1, hash2)
  merged_hash = Hash.new
  hash1.each do |key1, value1|
    hash2.each do |key2, value2|
      if key1 == key2
        if value1.is_a?(Array) and value2.is_a?(Array)
          if value1.length > value2.length
            merged_hash[key1] = array_overriding(value1, value2)
          else
            merged_hash[key1] = array_overriding(value2, value1)
          end

        else
          merged_hash[key1] = value2
        end

      else
        merged_hash[key2] = value2
      end

    end
  end

  return merged_hash
end

print deep_merge(hash1, hash2)
# print deep_merge(hash1, hash2)