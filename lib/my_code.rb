# Your Code Here
def negativize(array)
  new=[]
  i=0 
  while i<array.length do
    array[i] *= -1
    new << array[i]
    i+=1 
  end
  new
end

def map(source_array, block)
  