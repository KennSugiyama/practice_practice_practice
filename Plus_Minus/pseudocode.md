#Pseudocode

input = "6\n-4 3 -9 0 4 1"
solution ="0.500000\n0.333333\n0.166667"


[ ] Parse the input

  Goal:
    * n = 6
    * array = [-4, 3, -9, 0, 4, 1]
[ ] Calculate what fraction of numbers are positive?
  [ ] Round to 6th decimal (1.234567.round(5)  #=> 1.23457)
[ ] Calculate what fraction of numbers are negative?
  [ ] Round to 6th decimal
[ ] Calculate what fraction of numbers are zero?
  [ ] Round to 6th decimal
[ ] Generate the output

  Goal:
    * "0.500000\n0.333333\n0.166667"


## Notes
```ruby
f = 30.267153
s = "%0.10f" % f
#=> "30.2671530000"
```