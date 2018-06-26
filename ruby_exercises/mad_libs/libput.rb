class Mad_lib

def collect
    noun
    verb
    adjective
    adverb
    location
end

def noun
  p "please type a noun"
  @noun = gets.chomp
end

def verb
  p "please type a verb"
  @verb = gets.chomp
end

def adjective
  p "please type an adjective"
  @adjective = gets.chomp
end

def adverb
  p "please type an adverb"
  @adverb = gets.chomp
end

def location
  p "please type a location"
  @location = gets.chomp
end

def play
  collect
  p "the #{@adjective} #{@noun} #{@adverb} #{@verb} at #{@location}"
end

end

mad = Mad_lib.new
mad.play