# John Rexpearl Tumlos
# Array Exercise #08
# Write a method that compresses a string by replacing consecutive repeating characters with the character followed by the count. For example, "aaabbbccc" becomes "a3b3c3."

given_string = "rexxx"

# SOLUTION
def string_compressor(string)
  letters = string.split("")
  letter_array = Array.new
  letter_occurrences = Array.new
  letters.each_with_index do |letter|
    if letter_array.include?(letter)
      letter_index = letter_array.find_index(letter)
      letter_occurrences[letter_index] += 1
    else
      letter_array << letter
      letter_occurrences << 1
    end
  end

  compressed_letters = Array.new
  letter_array.each_with_index do | letter, index|
    if letter_occurrences[index] > 1
      compressed_letters << letter + letter_occurrences[index].to_s
    else
      compressed_letters << letter
    end
  end

  return compressed_letters.join("")
end

print string_compressor(given_string)