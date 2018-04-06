
puts "Welcome to the Bottega Diner."
puts "Will you be joining us for breakfast, lunch, or dinner?"
@time = gets.chomp.downcase

if @time.include?( "lunch" || "dinner" || "breakfast" )

  puts "We're so glad to have you joining us for #{@time}."

#else
#  puts "I'm sorry what was that?"
#end

#breakfast.create( Waffles: 2.99, OJ: 2.50, Pancakes: 4.50 )

#breakfast.Waffles