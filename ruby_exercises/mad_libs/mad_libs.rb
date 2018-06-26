class MadLibs
  require_relative "nouns"
  require_relative "adverbs"
  require_relative "locations"
  require_relative "verbs"
  require_relative "adjectives"

  verb = Verbs.new
  verb.get_verb

  noun = Nouns.new
  noun.get_noun

  Adverbs.get_adverb

  Adjectives.get_adjective

  location = Locations.new
  location.location = gets.chomp

  p "the #{Adjectives.put_adjective} #{noun.put_noun} #{Adverbs.put_adverb} #{verb.put_verb} at #{location.location}"
end