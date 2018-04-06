def bob string
  if string.match('\?')
    "Sure."
  elsif string.match('!')
    "Whoa, chill out!"
  elsif string.match(/\./)
    "Whatever"
  else
    "Fine. Be that way!" 
  end
end

def jane string
  if string.include?('\?')
    "Sure."
  elsif string.include?('!')
    "Whoa, chill out!"
  elsif string.include?('.')
    "Whatever"
  else
    "Fine. Be that way!" 
  end
end

def josh string
  if string =~ /\?/
    "Sure."
  elsif string =~ /\!/
    "Whoa, chill out!"
  elsif string =~ /\./
    "Whatever."
  else
    "Fine. Be that way!" 
  end
end

def beatrix string
  if string.end_with?('?')
    "Sure."
  elsif string.end_with?('!')
    "Whoa, chill out!"
  elsif string.end_with?('.')
    "Whatever"
  else
    "Fine. Be that way!" 
  end
end