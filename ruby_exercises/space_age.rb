require 'bigdecimal'

def space_age secs
  planets = %w(Earth Mercury Venus Mars Jupiter Saturn Uranus Neptune)
  years = %w(31557600 0.2408467 0.61519726 1.8808158 11.862615 29.447498 84.016846 164.79132)
  planets.each_index do |s|
    if years[s] !=  "31557600"
      puts "Your age on #{planets[s]} is #{(BigDecimal.new(secs.to_s)/(BigDecimal.new(years[0])*(BigDecimal.new(years[s])))).to_f} #{planets[s]} years old."
    else 
      puts "your age on #{planets[s]} is #{(BigDecimal.new(secs.to_s)/BigDecimal.new(years[0])).to_f} #{planets[s]} years old."
    end
  end
end

space_age 1_000_000_000