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

def reduce(array, starting_value)
  array.reduce(array, starting_value)
end
