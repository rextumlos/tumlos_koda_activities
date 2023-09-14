# John Rexpearl Tumlos
# Hash Exercise #09
# Deep Hash Equality Checker
# You are given two nested hashes representing data structures. Write a Ruby program that checks if the two hashes are deeply equal, meaning they have the same keys and values at all levels of nesting.
#
# For example, given the following two nested hashes:
# hash1 = {
#   "name" => "John",
#   "address" => {
#     "street" => "123 Main St",
#     "city" => "New York"
#   },
#   "scores" => [95, 88, 92]
# }
#
# hash2 = {
#   "name" => "John",
#   "address" => {
#     "street" => "123 Main St",
#     "city" => "New York"
#   },
#   "scores" => [95, 88, 92]
# }
# Your program should return true because hash1 and hash2 have the same keys and values at all levels of nesting.
# However, if you have the following two nested hashes:
hash1 = {
  "name" => "Alice",
  "address" => {
    "street" => "456 Elm St",
    "city" => "Los Angeles"
  },
  "scores" => [98, 87, 91]
}

hash2 = {
  "name" => "Bob",
  "address" => {
    "street" => "456 Elm St",
    "city" => "Los Angeles"
  },
  "scores" => [98, 87, 91]
}
# Your program should return false because hash1 and hash2 have different values for the "name" key.

def deep_hash_equality_checker(hash1, hash2)
  if hash1.length != hash2.length
    return "The hashes are not equal length."
  end

  hash1.each do | key1, value1 |
    hash2.each do | key2, value2 |
      if key1 == key2 and value1 != value2
        return "The hashes are not equal."
      end
    end
  end

  return "The hashes are equal."
end

print deep_hash_equality_checker(hash1, hash2)

