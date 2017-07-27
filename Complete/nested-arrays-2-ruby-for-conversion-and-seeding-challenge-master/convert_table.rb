def convert_table(table)
  hashed_table = []
  key = table.shift
  table.each do |entry|
    hash_entry = {}
    entry.each_with_index do |item, i |
    hash_entry[key[i]] = item
    end
    hashed_table << hash_entry
  end
  hashed_table
end