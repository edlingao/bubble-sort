def bubble_sort_by (arr)
    len = arr.length - 1
    left_or_right = yield(arr[0], arr[1]) if block_given?
    
    loop do
        condition = false
        len.times{
            |i|
            if(!block_given? ||left_or_right < 1 )
                if arr[i] >arr[i+1]
                    temp = arr[i]
                    arr[i] = arr[i+1]
                    arr[i+1] = temp
                    condition = true
                end
                
        else
            if arr[i] < arr[i+1]
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
                condition = true
            end
            
        end
        }
        break unless condition 
            
    end

    return arr
end
#Shows the bubble sort from bigger to smaller
rigth_to_left = lambda{|left, right| left.length - right.length}
#Shows the bubble sort from smaller to bigger
left_to_right = lambda{|left, right| right.length - left.length}

#Our array of words
array =  ["hi", "hey", "hello"]

#The out put of the bubble sort by method
puts bubble_sort_by(array, &left_to_right)