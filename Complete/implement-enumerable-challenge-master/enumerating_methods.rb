#each is already implemented as an example, check the test for it too!
def each(array)
  i = 0
  while i < array.length
    yield(array[i])
    i += 1
  end
end

def find(array)
  i = 0
  while i < array.length
    return array[i] if yield(array[i])
    i += 1
  end
end

def map(array)
  i = 0
  new_array = []
  while i < array.length
    new_array << yield(array[i])
    i += 1
  end
  new_array
end

def reject(array)
  i = 0
  new_array = []

  while i < array.length
    if !yield(array[i])
      new_array << array[i]
    end
    i += 1
  end
  new_array
end

def select(array)
  i = 0
  new_array = []

  while i < array.length
    if yield(array[i])
      new_array << array[i]
    end
    i += 1
  end
  new_array
end

# Coding all? is optional.
def all?(array)
  i = 0
  score = 0

  while i < array.length
    if yield(array[i])
      score += 1
    end
    i += 1
  end

  score == array.length
end

# Coding reduce is optional.
def reduce(array, starting_value = nil)
  i = 0

  if array[0].class == String
    final_value  = starting_value.to_s
  else
    final_value  = array[0]
  end

  while i < array.length
    final_value = yield(final_value, array[i])

    i += 1
  end
  final_value
end



