def shuffle(array)
  unshuffled = Array.new(array)
  shuffled = []
  until unshuffled.length == 0
    i = rand(unshuffled.length)
    shuffled << unshuffled[i]
    unshuffled.delete_at(i)
  end
  shuffled
end