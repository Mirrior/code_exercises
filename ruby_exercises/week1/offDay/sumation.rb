def sumation
  puts "please enter a number:"
  
  x = gets.chomp.to_i
  i = 1
  t=0
  while i <= x do

    t +=i
    i +=1
    print t.to_s + " "
  end
end

sumation