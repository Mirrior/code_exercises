# hangman
#   X input: single letters
#   X word list (maybe predefined words list?)
#   - display letters
#   - display hanged man (double MVP)
#   - store the status of letters
#   - which letters have already been guessed
#   - logic for letter input to word list
#   - check to see if dead
#   - check to see if finished

# ======

# variables
starting_sentence = "Our secret sentence"
sentence_array = starting_sentence.split("").map(&:downcase)
final_sentence = starting_sentence.gsub(/[a-zA-Z]/, "_").split("")
not_dead = true
unfinished = true
mistakes = 0

def hang_display mistake
  if mistake == 0
    puts "           _______________ "
    puts "          |               |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  elsif mistake == 1
    puts "            ______________ "
    puts "           |              |"
    puts "          ----            |"
    puts '        /      \          |'
    puts "        |  . . |          |"
    puts "        |   >  |          |"
    puts '        \  --  /          |'
    puts '          ----            |'
    puts "          | |             |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  elsif mistake == 2
    puts "            ______________ "
    puts "           |              |"
    puts "          ----            |"
    puts '        /      \          |'
    puts "        |  . . |          |"
    puts "        |   >  |          |"
    puts '        \  --  /          |'
    puts '          ----            |'
    puts "       ___|_|____         |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |__________|        |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  elsif mistake == 3
    puts "            ______________ "
    puts "           |              |"
    puts "          ----            |"
    puts '        /      \          |'
    puts "        |  . . |          |"
    puts "        |   >  |          |"
    puts '        \  --  /          |'
    puts '          ----            |'
    puts "       ___|_|____         |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |__________|        |"
    puts "       | |                |"
    puts "       | |                |"
    puts "       | |                |"
    puts "       | |                |"
    puts "       | |_               |"
    puts "     _/    |              |"
    puts "    /______|              |"
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  elsif mistake == 4
    puts "            ______________ "
    puts "           |              |"
    puts "          ----            |"
    puts '        /      \          |'
    puts "        |  . . |          |"
    puts "        |   >  |          |"
    puts '        \  --  /          |'
    puts '          ----            |'
    puts "       ___|_|____         |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |          |        |"
    puts "      |__________|        |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |_  _| |         |"
    puts '     _/    ||    \_       |'
    puts '    /______||______\      |'
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  elsif mistake == 5
    puts "            ______________ "
    puts "           |              |"
    puts "          ----            |"
    puts '        /      \          |'
    puts "        |  . . |          |"
    puts "        |   >  |          |"
    puts '        \  --  /          |'
    puts '          ----            |'
    puts "       ___|_|_______      |"
    puts '      |             \     |'
    puts '      |           _  \    |'
    puts '      |          | \  \   |'
    puts "      |          |  |  |  |"
    puts "      |          |  |  |  |"
    puts "      |          |  |  |  |"
    puts '      |          |   \/   |'
    puts "      |__________|        |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |_  _| |         |"
    puts '     _/    ||    \_       |'
    puts '    /______||______\      |'
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  elsif mistake == 6
    puts "            ______________ "
    puts "           |              |"
    puts "          ----            |"
    puts '        /      \          |'
    puts "        |  . . |          |"
    puts "        |   >  |          |"
    puts '        \  --  /          |'
    puts '          ----            |'
    puts "     _____|_|______       |"
    puts '    /              \      |'
    puts '   /                \     |'
    puts '  /  /|          |\  \    |'
    puts " |  | |          | |  |   |"
    puts " |  | |          | |  |   |"
    puts " |  | |          | |  |   |"
    puts '  \/  |          |  \/    |'
    puts "      |__________|        |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |    | |         |"
    puts "       | |_  _| |         |"
    puts '     _/    ||    \_       |'
    puts '    /______||______\      |'
    puts "                          |"
    puts "                          |"
    puts "      ____________________|"
  end
end

puts "Welcome to hangman"
while not_dead && unfinished
  puts 'Please type a letter'
  letter = gets.strip.downcase
  if final_sentence.include?(letter)
    puts "that's already been used"
  else
    if sentence_array.include? letter
      sentence_array.each_index { |i| final_sentence[i] = letter if sentence_array[i] == letter }
    else 
      puts "That letter is not in the sentence"
      mistakes += 1
    end
    not_dead = false if mistakes >= 6
    unfinished = false if final_sentence.join.casecmp(sentence_array.join).zero?
  end
  hang_display mistakes
  p final_sentence.join
  puts "You lose" if !not_dead
  puts "You win" if !unfinished
end

