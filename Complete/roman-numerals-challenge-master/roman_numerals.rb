EDGE_CASES = { 4 => "IV",
              9 => "IX",
              40 => "XL",
              90 => "XC",
              400 => "CD",
              900 => "CM" }

ROMAN_DICTIONARY = { 1000 => "M",
                    500 => "D",
                    100 => "C",
                    50 => "L",
                    10 => "X",
                    5 => "V",
                    1 => "I" }


def convert_to_roman(arabic_number, roman_number = "")
  ROMAN_DICTIONARY.each do |number, letter|
    coefficient = (arabic_number / number).floor
    if coefficient != 0
      roman_number << constructor(letter, coefficient)
      arabic_number -= (number * coefficient)
    end
  end
  roman_number
end


def convert_to_modern_roman(arabic_number, roman_number = [])
  i = -1
  number = arabic_number.to_s.split("").reverse
  number.each do |digit|
    i+=1
    digit = digit.to_i * (10 ** i)
    if edge_case?(digit)
      roman_number << EDGE_CASES[digit]
    else
      roman_number << convert_to_roman(digit)
    end
  end
  roman_number.reverse.join('').to_s
end


def constructor(letter, coefficient, roman_number = "")
  coefficient.times { |n| roman_number << letter }
  roman_number
end


def edge_case?(value)
  EDGE_CASES.key?(value)
end