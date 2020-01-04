def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  new
end 

def reduce(source_array, starting_point=0)
  new = [starting_point]
  i = 0
  while i < source_array.length do
    new[i+1] = yield(new[i], source_array[i])
    i+=1
  end
  return new[-1]
end