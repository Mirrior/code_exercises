def greetings
  puts "Please enter name:"
  name = gets.chomp.to_s
  puts "Greetings #{name}"
end

greetings