# Your Code Here

def map(source_array)
  array = []
  i = 0 
  while i < source_array.length do 
    array << yield(source_array[i])
    i += 1 
  end 
  return array
end 

#map(source_code){|n| n * -1}

def reduce(source_array, starting_point = 0)
  value = starting_point 
  i = 0 
  while i < source_array.length do 
    #lines 19-22 was just something I was trying that would address the truthy, truth, and false parts of this lab 
    # if yield(value, source_array[i])
    #   value = yield(value, source_array[i])
    # end 
    
    # line 25 passes all the tests except for returning true when a truthy value is present, however I think the reason the other tests passed, was because of the order of the arrays of input
    # value = yield(value, source_array[i])
    
    i += 1 
  end 
  return value 
end 