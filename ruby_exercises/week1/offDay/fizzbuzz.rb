 @x = 1
until @x > 100
  if @x.modulo(3).zero? && @x.modulo(5).zero?
   print "fizzbuzz "
   @x += 1
  elsif @x.modulo(3).zero? 
    print "fizz "
    @x += 1
  elsif @x.modulo(5).zero?
    print "buzz "
    @x += 1
  else
    print "#{@x} "
    @x += 1
  end
end