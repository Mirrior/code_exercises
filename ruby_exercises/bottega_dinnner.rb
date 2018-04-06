@time_meals = {
    "breakfast" => {"hashbrowns" => 1.00, "eggs" => 2.50, "Juice" => 1.75},
    "lunch"     => {"sandwich" => 6.50, "soda" => 1.75, "chips" => 2.50},
    "dinner"    => {"breadsticks" => 1.50, "pasta" => 7.50, "sangria" => 3.00}
}

def time_of_day
  puts "Hello will you be joining us for breakfast, lunch, or dinner"
  meals = what_can_we_get_you @time_meals
  puts "Where so happy you're joining us for #{@time_meals.keys(meals)}"
  meals  
end

def what_can_we_get_you foods_hsh
  input = gets.chomp.downcase
  case input
  when /#{foods_hsh.keys.join("|")}/
    puts "We're so glad to have you joining us for #{input}."
    foods_hsh[input]
  else
    puts "Sorry what was that?"
    what_can_we_get_you foods_hsh
  end
end

