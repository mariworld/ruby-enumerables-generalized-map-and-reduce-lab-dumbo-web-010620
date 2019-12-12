# Your Code Here
#write a generalized method for map and reduce
#method should take an array and block
def map(array)
  new = []
  index = 0
  while index < array.length do
    new.push(yield(array[index]))
    index += 1
  end
  new
end

def reduce(array, starting_value = nil)
  if starting_value
    sum = starting_value
    i = 0
  else
    sum = array[0]
    i = 1
  end
  while i < array.length do
    yield(sum, array[i])
  end
  sum
end
