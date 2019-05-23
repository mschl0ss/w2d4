



def first_anagram?(word1,word2)
  word1.chars.permutation.to_a.include?(word2.chars)
end

def second_anagram?(word1,word2)
  w2 = word2.split("")
  for i in (0...word1.length)
    w2.delete_at(w2.find_index(word1[i])) unless w2.find_index(word1[i]) == nil
  end
  w2.empty?
end

def third_anagram?(word1,word2)
  word1.split("").sort == word2.split("").sort
end

def fourth_anagram?(word1, word2)

  letters = Hash.new(0)

  word1.each_char { |char| letters[char] +=1 }
  word2.each_char { |char| letters[char] -=1 }

  letters.all? { |k,v| letters[k] == 0}
end

w1 = "elvis"
w2 = "lives" #elvis, viles, lives, svile, lesiv
puts "Anagrams?(#{w1},#{w2})"
puts "first_anagram? : " + first_anagram?(w1,w2).to_s
puts "second_anagram?: " + second_anagram?(w1,w2).to_s
puts "third_anagram? : " + third_anagram?(w1,w2).to_s
puts "fourth_anagram?: " + fourth_anagram?(w1,w2).to_s

