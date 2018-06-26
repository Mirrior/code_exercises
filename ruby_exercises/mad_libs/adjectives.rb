class Adjectives
def self.get_adjective
  p "please type a adjective"
  @adjective = gets.chomp
end


def self.put_adjective
  @adjective
end

end