require_relative "roman_numerals.rb"



def number_input(valid_response = false)
  until valid_response == true
    puts "What number would you like converted?"
    arabic_number = gets.chomp.to_i
    return roman_type_input(arabic_number)
    valid_response == true
  end

end

def roman_type_input(arabic_number, valid = false)
  p arabic_number
end


number_input

# until arabic_number.type = fixnum
#   puts "What number would you like converted?"
#   arabic_number = gets.chomp

# end
#   puts "Would you like modern or old Roman numerals?"
#   type = gets.chomp

#   case type
#   when ("old")
#     convert_to_roman
#     good_input = true
#   when ("modern")
#     convert_to_modern_roman
#     good_input = true
#   else
#     return
#   end
# end