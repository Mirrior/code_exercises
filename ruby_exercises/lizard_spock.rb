choices = %w(lizard spock scissors paper rock)
p "your choices are: #{choices.join(", ")}"
player_choice = gets.chomp

com_choice = choices.sample
p com_choice

another_array = choices.select{ |element| choices.find_index(element).odd? }
choices.delete player_choice
won_lost_choices = choices.select{ |element| choices.find_index(element).odd? }
win_lose = won_lost_choices.include? com_choice

case player_choice
when com_choice
  p "tie"
when /[#{another_array.join}]/
  if win_lose
    p "Win"
  else
    p "lose"
  end
else 
  if win_lose
    p "lose"
  else
    p "win"
  end
end