require "byebug"
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(arr)
    min = arr.first

    arr.each do |i|
        min = i if i < min
    end
    min
end
p my_min(list)  # =>  -5

def my_min_2(arr)
    min = arr.first
    arr.each do |i|
        debugger
        min = i if arr.all? { |j| j > i }
        debugger
    end
    min
end
p my_min_2(list)  # =>  -5
            
