# John Rexpearl Tumlos
# Hash Exercise #03
# Invert a Dictionary
# You are given a dictionary represented as a hash with words as keys and their corresponding meanings as values. Write a Ruby program to create a new hash where the meanings become keys, and the words become values. If multiple words share the same meaning, they should be collected in an array.
# For example, given the following dictionary hash:
dictionary = {
  "apple" => "a fruit",
  "banana" => "a fruit",
  "carrot" => "a vegetable",
  "dog" => "a pet",
  "cat" => "a pet"
}
# Your program should produce the following inverted dictionary hash:
# {
#   "a fruit" => ["apple", "banana"],
#   "a vegetable" => ["carrot"],
#   "a pet" => ["dog", "cat"]
# }

def inverter(dictionary)
  inverted_dictionary = Hash.new

  dictionary.each do | key, value |
    if inverted_dictionary.include?(value)
      inverted_dictionary[value] += [key]
    else
      inverted_dictionary[value] = [key]
    end
  end

  return inverted_dictionary
end

print inverter(dictionary)