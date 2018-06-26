# First Version
# def recursive_countdown attempt
#   return if attempt.zero?
#   puts attempt
#   recursive_countdown(attempt-1)
# end

# Second Version
def recursive_countdown attempt
  puts attempt
  attempt == 1 ? return : recursive_countdown(attempt-1)
end

my_arr = [1, 2, 3, 4, 5, 6]

def sum_array_iteratively(arr)
  total_sum = 0

  arr.each do |ele|
    total_sum += ele
  end

end

def sum_array_recursive(arr)
  if arr.empty?
    0
  else
    head, *tail = arr
    head + sum_array_recursive(tail)
  end
end

p sum_array_recursive(my_arr)

def factorial_iteratively number
  if number == 0 || number == 1
    1
  else
    product = 1
    number.times do |n|
      product *= ( n + 1 )
    end
    puts product
  end   
end

def factorial_recursively number
  if number == 0 || number == 1
    1
  else
    number * factorial_recursively(number - 1)
  end
end