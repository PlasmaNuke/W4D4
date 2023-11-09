
# def anagram?(word1, word2)
#     anagrams = word1.chars.permutation.map {|word| word.join}
#     anagrams.include?(word2)
# end


# puts anagram?("gizmo", "sally")    #=> false
# puts anagram?("elvis", "lives")    #=> true


# puts anagram?("reoccupation", "cornucopiate") 





def anagram?(word1, word2)
    indices = []
    word1_arr = word1.chars
    word2_arr = word2.chars

    word1_arr.each do |char|
        index_info = word2_arr.find_index(char)
        if !!index_info
            indices << index_info
            word2_arr.delete_at(index_info)
        end
    end
    return indices.length == word1.length && word2_arr.empty?
end

puts anagram?("gizmo", "sally")    #=> false
puts anagram?("elvis", "lives")    #=> true
puts anagram?("reoccupation", "cornucopiate") 