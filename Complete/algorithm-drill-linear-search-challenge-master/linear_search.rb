def linear_search(object, array)
  i = 0
  until i == array.length
    return i if array[i] == object
    i += 1
  end
end


def global_linear_search(object, array)
  response =[]
  i = 0
  until i == array.length
    if array[i] == object
      response << i
    end
    i += 1
  end
  response
end


