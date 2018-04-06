def pig_latin text
  text.split.each { |word| word.scan(/(\A[aeiouAEIOU]+\w+)|([^aeiouAEIOU]+)(\w+)/) {|x, y, z| print z, y, x, "ay "} }
end

def pig_latin text
  text.split.each do |word|
    word.scan(/(\A[aeiouAEIOU]+\w+)|([^aeiouAEIOU]+)(\w+)/) {|x, y, z| print z, y, x, "ay "}
  end
end

p "Please type what you would like to see turne into pig latin"
answer = gets.chomp

pig_latin answer