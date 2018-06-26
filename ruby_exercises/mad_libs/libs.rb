class Mad_lib

def noun
  nouns = ["Dog", "Cow", "Person", "Murderer", "Girl", "Survivor", "Fork"]
  nouns.sample
end

def verb
  verbs = ["run", "dodge", "jump", "fly", "fall"]
  verbs.sample
end

def adjective
  adjectives = ["cold", "hot"]
  adjectives.sample
end

def adverb
  adverbs = ["quickly", "slowly", "gingerly"]
  adverbs.sample
end

def location
  locations = ["home", "wendy's", "capital building"]
  locations.sample
end

def play

  p "the #{adjective} #{noun} #{verb} #{adverb} at #{location}"
end

end

mad = Mad_lib.new
mad.play