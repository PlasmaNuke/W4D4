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