class Verbs
def get_verb
  p "please type a verb"
  @verb = gets.chomp
end

def put_verb
  @verb
end

end