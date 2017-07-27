def generate_roster
  roster = [['Number', 'Name', 'Position', 'Points per Game']]
  numbers = [12, 9, 31, 18, 22]
  names = ["Joe Schmo", "Ms. Buckets", "Harvey Kay", "Sally Talls", "MK DiBoux"]
  positions =["Center", "Point Guard", "Shooting Guard", "Power Forward", "Small Forward"]
  scores = [[14, 32, 7, 0, 23], [19, 0, 11, 22, 0], [0, 30, 16, 0, 25],[18, 29, 26, 31, 19], [11, 0, 23, 17, 0]]
  numbers.each { |number| roster << Array.new(1,number) }
  names.each_with_index { |name, i| roster[i + 1][1] = name }
  positions.each_with_index { |position, i| roster[i + 1][2] = position }
  scores.each_with_index { |score, i| roster[i + 1][3] = score }
  p roster
end

