require 'numbers_in_words'
require 'numbers_in_words/duck_punch'

@arr = []

def total
  puts 'enter exit if you would like to exit'
  puts 'else enter a new number to add'

  new_num = gets.chomp
  abort("I am sad to see you go") if new_num =~ /[eE][xX][iI][tT]/

  @arr << new_num.in_numbers
  puts "Total is #{@arr.inject(:+)}"

  total
end

total