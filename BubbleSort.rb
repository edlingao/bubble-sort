
def bubble_sort arr
    len = arr.length - 1
    loop do
        condition = false
        len.times{ 
            |i|
            if arr[i] >arr[i+1]
                temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp
                condition = true
            end
        }
        break unless condition
            
    end

    arr

end

#Our array of words
array =  ["hi", "hello","hey"]
puts bubble_sort(array)