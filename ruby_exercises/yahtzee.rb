class Dice
  def new_dice
    @dice = Array.new(5) { rand (1..6) }.sort
    
  end

  def select_dice
    p "pick dice? (y/n)"
    choice_array = Array.new
    choice = gets.chomp
    while choice == "y"
      p @dice
      p "Please select dice from positions 0-#{@dice.size}"
      array_partial = gets.chomp.to_i
      choice_array << @dice[array_partial]
      @dice.delete_at(array_partial)

  end

  def display_dice
    p @dice
  end

  def roll_dice
    @dice.map{}
  end

  def limit_roll
    
  end
end


class Score_card
# find out the scoring methods

  def upper_score_card
    @upper_card = Array.new(7)
  end

  def ones
    @upper_card[0] = @dice.count(1)
  end

  def twos
    @upper_card[1] = (@dice.count(2) * 2)
  end

  def threes
    @upper_card[2] = (@dice.count(3) * 3)
  end

  def fours
    @upper_card[3] = (@dice.count(4) * 4)
  end

  def fives
    @upper_card[4] = (@dice.count(5) * 5)
  end

  def sixes
    @upper_card[5] = (@dice.count(6) * 6)
  end

  def bonus
    if @upper_card.reduce(:+) >= 63
      @upper_card[6] = 35
    else
      @upper_card[6] = 0
    end
  end

  def lower_score_card
    @lower_card = Array.new(7)
  end

  def three_of_kind
    if @dice.count { |x| x == }
      @lower_card[0] = @dice.reduce(:+)
    else
      @lower_card[0] = 0
    end
  end

  def four_of_kind
    if @dice.count { |x| x == }
      @lower_card[1] = @dice.reduce(:+)
    else
      @lower_card[1] = 0
    end
    
  end

  def full_house
    if condition
      @lower_card[2] = 25
    else
      @lower_card[2] = 0
    end
  end

  def small_straight
    if condition
      @lower_card[3] = 25
    else
      @lower_card[3] = 0
    end
  end

  def large_straight
    if (@dice == [1,2,3,4,5]) || (@dice == [2,3,4,5,6])
      @lower_card[4] = 25
    else
      @lower_card[4] = 0
    end
  end

  def chance
    @lower_card[5] = @dice.reduce(:+)
  end

  def yahtzee
    if condition
      @lower_card[6] = 50
    else
      @lower_card[6] = 0
    end
  end
end

class Player
# inheret from dice and score
# create base class so a new instance of it can be created


end


class Intro
  def hello
    p "Welcome to Yahtzee"
  end
  

end

class Yahtzee
# Start of the game?

end
