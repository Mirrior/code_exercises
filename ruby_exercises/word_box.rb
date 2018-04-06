def frame words 
  word_array = words.split
  framelength = 0
  
  word_array.each do |word|
    framelength = word.length if word.length > framelength 
  end
  
  puts "*" * (framelength + 4)
  word_array.each do |word|
    puts "* #{word} #{" " * (framelength - word.length)} *"
  end
  puts "*" * (framelength + 4)
end

frame "The quick brown fox jumped over the lazy dog"