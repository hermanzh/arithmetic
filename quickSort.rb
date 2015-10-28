
# 1. quick sort

array = [1,22,4,3,5,3,3,4,3,42,234,32,5,4,56,46,4,36,5,6,47,87,543]

def quick_sort(array, low, high)
  if low >= high
    return
  end
  
  first = low
  last = high
  key = array[first]
  
  while first < last
    # find the value less than key from back of array
    while first < last && array[last] >= key 
      last-=1 
    end
    # set the less value to front of array
    array[first] = array[last]
    # find the value larger than key from front of array
    while first < last && array[first] <= key
      first+=1
    end
    # set the larger value to back of array
    array[last] = array[first]
  end
  # store the pivot value
  array[first] = key
  
  quick_sort(array, low, first-1)
  quick_sort(array, first+1, high)
end

p array
quick_sort(array, 0, array.size()-1)
p array