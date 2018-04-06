
score = {"1" => 0, "2" => 0, "3" => 0, "4" => 0, "5" => 0, "6" => 0, "7" => 0, "8" => 0, "9" => 0, "10" => 0}
strike_array = []
current_bracket = "1"
def roll score 
    @score += score
    bracket
    strike score
    spare score
end

def score
  p @score
end

def strike score
  if score == 10
    strike_array << current_bracket
end

def spare score
  
end

def bracket
  @bracket += 1 if 2scores
end

