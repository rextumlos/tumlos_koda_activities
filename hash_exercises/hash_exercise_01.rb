# John Rexpearl Tumlos
# Hash Exercise #01
# Word Frequency Counter with Hash:
# Write a program that takes a string and counts the frequency of each word using a hash. Return a hash where the keys are words, and the values are their respective counts.

def frequency_counter(string)
  hash_counter = Hash.new
  words = string.split(" ")

  words.each do | word |
    if hash_counter.include?(word)
      hash_counter[word] += 1
    else
      hash_counter[word] = 1
    end
  end

  return hash_counter
end

print frequency_counter("aloha alohe aloha aloho")