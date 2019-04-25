def bubble_sort_by (arr, yield_true = false)
    len = arr.length - 1
    left_or_right = yield(arr[0], arr[1]) if yield_true
    
    loop do
        condition = false
        len.times{
            |i|
            if(!yield_true ||left_or_right < 1 )
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
#Tells the function if we will sow a block of code or not
show_block = false
#Our array of words
array =  ["hi", "hey", "hello"]

#The out put of the bubble sort by method
puts bubble_sort_by(array, show_block, &left_to_right)