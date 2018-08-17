require 'matrix'

def fib_version_1(n)
  j = Matrix[[1,1], [1,0]] ** n.abs
  n.even? && n.negative? ? - j[0,1] : j[0,1]
end

def fib_version_2(n)
  (Matrix[[1,1], [1,0]] ** n)[0,1]
end