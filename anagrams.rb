require "byebug"
def first_anagram?(string1, string2)
    anagrams = string1.split("").permutation.to_a
    anagrams.include?(string2.split("")) 
end
p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true