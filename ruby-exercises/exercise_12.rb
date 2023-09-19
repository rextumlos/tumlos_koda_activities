# John Rexpearl Tumlos
# Exercise 12 - Valid Anagram

def isAnagram(s, t)
  s_arr = s.split("").sort
  t_arr = t.split("").sort
  if s_arr.length == t_arr.length
    s_arr.each_with_index do |letter_1, index_1|
      t_arr.each_with_index do |letter_2, index_2|
        if index_1 == index_2 and letter_1 != letter_2
          return false
        end
      end
    end
  else
    return false
  end

  true
end

s = "anagram"
# s = "rat"
t = "nagaram"
# t = "car"

print isAnagram(s, t)