def leap_year year
  if (year % 100).nonzero? && (year % 400).zero?
  "leap year"
 elsif (year % 4).zero?
   "leap year"
 else
   "not a leap year"
 end
end
leap_year 1996