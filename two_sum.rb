require "byebug"

def two_sum?(arr, target_sum)

    (0...arr.length-1).each do |i|
        (i+1...arr.length).each do |j|
            return true if arr[i] + arr[j] == target_sum
        end
    end

    false
end
arr = [0, 1, 5, 7]
p two_sum?(arr, 6)
p two_sum?(arr, 10)

def okay_two_sum?(arr, target_sum)
    arr = arr.sort
    i = 0
    j = arr.length - 1
    