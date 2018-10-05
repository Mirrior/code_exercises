class Warrior
  @@ranks = ["Pushover", "Novice", "Fighter",
            "Warrior", "Veteran", "Sage", 
            "Elite", "Conqueror", "Champion", "Master", "Greatest"]
  attr_accessor :level, :rank, :experience, :achievements
  
  def initialize
    @level = 1
    @experience = 100
    @rank = @@ranks.first
    @achievements = []
  end
  
  def update exp
    if @experience + exp >= 10000 
      @experience = 10000
    else
      @experience += exp
    end
    @level = @experience / 100
    @rank = @@ranks[@experience/1000]
  end
  
  def training event
    return "Not strong enough" if  level < event.last
    @achievements << event.first
    update event[1]
    return event.first
  end
  
  def battle enemy_level
    return "Invalid level" if !(0..100).cover? enemy_level
    if (enemy_level/10) > (level/10) && (enemy_level - level) >= 5
      "You've been defeated"
    elsif enemy_level > level
      update (20 * (enemy_level - level) ** 2)
      "An intense fight"
    elsif (level - enemy_level) >= 2
      "Easy fight"
    else
      enemy_level == level ? update(10) : update(5)
      "A good fight"
    end
  end
end