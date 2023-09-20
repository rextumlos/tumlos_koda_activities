# John Rexpearl Tumlos
# Exercise 3: Longest Common Prefix
def longestCommonPrefix(array)
  base_word_array = array.pop.split("")
  str_match = Array.new
  array.each do |word|
    word_arr = word.split("")
    word_arr.each_with_index do |letter, index|
      if letter == base_word_array[index]
        unless str_match.include?(letter) and !str_match[index].nil?
          str_match << letter
        end
      else
        index != 0 ? next : break             # weird part, I unconsciously added this as I think it's the right logic while typing yet I'm still trying to figure out what's happening for the whole loop lol.
      end
    end
  end

  str_match.join("")
end


input_1 = ["flower","flow","flight"]
input_2 = ["dog","racecar","car"]
input_3 = ["rrx", "rrxf", "rrxdex", "rrxas"]

puts longestCommonPrefix(input_3)