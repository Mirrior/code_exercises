p "You are playing high or lower"
@min_guess = 1
@max_guess = 25
@guess_arr = (@min_guess..@max_guess).to_a
p "Please choose a number from 1 - 25"
@guessing = true
while @guessing
  guess = @guess_arr.sample
  p "Higher, Lower, Yes, Leave"
  p "Is your number #{guess}"
  player_input = gets.chomp
  if player_input.downcase == "higher"
    @min_guess = players_input
  elsif player_input.downcase == "lower"
    @max_guess = players_input
  elsif player_input.downcase == "leave"
    @guessing = false
  elsif player_input.downcase == "yes"
    p "yay, i win"    
  else
    p "Please put in higher or lower"
    player_input = gets.chomp
    higher_or_lower player_input
  end
    @guess_arr = (@min_guess..@max_guess).to_a
end
end

