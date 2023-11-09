list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

def my_min(arr)
    arr.min
end

def my_min_linear(arr) #
    result = arr[0] # 2
    i = 0 # 1

    while i < arr.length # n
        if result > arr[i] # 6
            result = arr[i]
        end
        i += 1 # 1
    end
    result # 1
end
# [2 + 1 + n * 7 + 1]  =>  [7n] => O(n)

puts my_min_linear(list)
puts my_min(list)




list = [5, 3, -7]
list1 = [2, 3, -6, 7, -6, 7]
list2 = [-5, -1, -3]

def largest_contiguous_subsum(list)
    result = []

    (0...list.size).each do |idx1|
        (idx1...list.size).each do |idx2|
            result << list[idx1..idx2]
        end
    end
    result.map {|arr| arr.sum}.max
end

puts largest_contiguous_subsum(list)
puts largest_contiguous_subsum(list1)
puts largest_contiguous_subsum(list2)