choices = %w(lizard spock scissors paper rock)
p "your choices are: #{choices.join(", ")}"
input = gets.chomp
com_input = choices.sample
p com_input
another_array = choices.select{ |element| choices.find_index(element).odd? }
choices.delete input
win_lose_array = choices.select{ |element| choices.find_index(element).odd? }
win_lose = win_lose_array.include? com_input
case input
when com_input
  p "tie"
when /#{another_array.join("|")}/
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