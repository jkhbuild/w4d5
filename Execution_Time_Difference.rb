require "byebug"
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(arr)
    min = arr.first

    arr.each do |i|
        min = i if i < min
    end
    min
end
#p my_min(list)  # =>  -5

def my_min_2(arr)
    # min = arr.first
    # arr.each do |i|
    #     debugger
    #     min = i if arr.all? { |j| j > i }
    #     debugger
    # end
    # min
    (0...arr.length).each do |i|
        count = 0
        (0...arr.length).each do |j|
            # debugger
            count += 1 if arr[i] < arr[j]
            # debugger
            return arr[i] if count == arr.length - 1

        end
    end

end
#p my_min_2(list)  # =>  -5

list_1 = [5,3,-7]
list_2 = [2, 3, -6, 7, -6, 7]
list_3 = [-5, -1, -3]

def largest_contiguous_subsum(list)

    sub_sums = [] + list
    (0...list.length).each do |i|
        (0...list.length).each do |j|
            sub_sums << list[i..j].sum if j > i
        end     
    end
    sub_sums.max
end

p largest_contiguous_subsum(list_1) #=> 8
p largest_contiguous_subsum(list_2) #=> 8          
p largest_contiguous_subsum(list_3) #=> -1

def largest_contiguous_subsum2(list)

    curr_sum = 0
    max_sum = list.first 

    i = 0
    j = 0

    while curr_sum !=

    # while j < list.length
    #     curr_sum = list[i..j]
    #     if curr_sum > 0
    #         j+=1
    #     elsif curr_sum < 0
    #         i+=1
    #         j+=1
    #     end
    # end
    

    
end
p largest_contiguous_subsum2(list_1) #=> 8
p largest_contiguous_subsum2(list_2) #=> 8          
p largest_contiguous_subsum2(list_3) #=> -1