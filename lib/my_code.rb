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
    if yield(value, source_array[i])
      value = yield(value, source_array[i])
    elsif yield(value, source_array[i]) != true 
      value = yield(value, source_array[i])
    else 
      value = true 
    end 
    
    # value = yield(value, source_array[i])
    
    i += 1 
  end 
  return value 
end 