require 'numbers_in_words'
require 'numbers_in_words/duck_punch'

# using arrays

def total arr = []
  puts 'enter exit if you would like to exit'
  puts 'else enter a new number to add'

  new_num = gets.chomp
  abort("I am sad to see you go") if new_num.casecmp?("exit")

  arr.push new_num.in_numbers
  puts "Total is #{current_total = arr.inject(:+)}"

  total [current_total]
end

# @arr = []

# def first_total_method
#   puts 'enter exit if you would like to exit'
#   puts 'else enter a new number to add'

#   new_num = gets.chomp
#   abort("I am sad to see you go") if new_num.casecmp?("exit")

#   @arr << new_num.in_numbers
#   puts "Total is #{@arr.inject(:+)}"

#   different_total_method
# end

def new_total_method int = 0
  puts 'enter exit if you would like to exit'
  puts 'otherwise enter a new number to add'
  
  new_num = gets.chomp
  abort("I am sad to see you go") if new_num.casecmp?("exit")

  puts "Total is #{int += new_num.in_numbers}"

  new_total_method int
end

new_total_method