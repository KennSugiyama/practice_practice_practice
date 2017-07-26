# Determine whether a string contains a Social Security Number.
def has_ssn?(string)
  regexp_key = /(\d{3}-\d{2}-\d{4})/
  !!regexp_key.match(string)
end

# Find and return a Social Security Number.
def grab_ssn(string)
  regexp_key = /(\d{3}-\d{2}-\d{4})/

  if regexp_key.match(string)
    regexp_key.match(string)[0]
  else
    ""
  end
end

# Find and return all Social Security Numbers.
def grab_all_ssns(string)
  regexp_key = /(\d{3}-\d{2}-\d{4})/
  string.scan(regexp_key).flatten
end

# Obfuscate all Social Security Numbers. Example: XXX-XX-4430.
def hide_all_ssns(string)
  regexp_key = /(\d{3}.\d{2})/
  string.gsub(regexp_key, 'XXX-XX')
end

# Format all Social Security Numbers to use single dashes for delimiters:
# '480014430', '480.01.4430', and '480--01--4430' would all be formatted '480-01-4430'.
def format_ssns(string)
  regexp_key = /(\d{3})[^\d]*(\d{2})[^\d]*(\d{4})/
  string.gsub(regexp_key, '\1-\2-\3')
end
