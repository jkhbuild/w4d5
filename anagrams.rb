require "byebug"
def first_anagram?(string1, string2)
    anagrams = string1.split("").permutation.to_a
    anagrams.include?(string2.split("")) 
end
# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true

def first_anagram2?(string1,string2)
    string2_arr = string2.split('')
    string1.each_char do |char|
        string2_arr.delete_at(string2_arr.index(char)) if string2.include?(char)
        # debugger
        return true if string2_arr.length == 0
    end
    false
end

# p first_anagram2?("gizmo", "sally")    ##=> false
# p first_anagram2?("elvis", "lives")    #=> true

def first_anagram3?(string1, string2)
    string1.split("").sort == string2.split("").sort
end

# p first_anagram3?("gizmo", "sally")    ##=> false
# p first_anagram3?("elvis", "lives")    #=> true

def first_anagram4?(string1, string2)
    hash = Hash.new(0)
    return false if string1.length != string2.length
    (0...string1.length).each do |i|
        hash[string1[i]] += 1
        hash[string2[i]] -= 1
    end

    hash.values.all?(0)
end
p first_anagram4?("gizmo", "sally")    ##=> false
p first_anagram4?("elvis", "lives")    #=> true
