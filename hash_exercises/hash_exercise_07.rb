# John Rexpearl Tumlos
# Hash Exercise #07
# Common Elements in Hashes
#
# You are given two hashes, hash1 and hash2, where each hash contains key-value pairs. Write a Ruby program to find and return a new hash containing the key-value pairs that are common to both hash1 and hash2.
#
# For example, given the following two hashes:
#
hash1 = { "a" => 1, "b" => 2, "c" => 3, "d" => 4 }
hash2 = { "b" => 2, "d" => 4, "e" => 5, "a" => 1 }
#
# Your program should produce the following hash, which contains the key-value pairs that are common to both hash1 and hash2:
# { "b" => 2, "d" => 4 }

def common_elements(hash1, hash2)
  commons = Hash.new
  hash1.each do |key1, value1|
    hash2.each do |key2, value2|
      if key1 == key2 and value1 == value2
        commons[key1] = value1
      end
    end
  end

  return commons
end

print common_elements(hash1, hash2)