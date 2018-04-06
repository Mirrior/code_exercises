
def start_blackjack
  @wallet = 100
  @initial_amount = @wallet
  @total_loses = 0
  p "You're starting with #{@wallet}"
  reset_game
  help
end

def deal
  if @bet == 0
    p "you have to bet first"
  elsif
    @hand > 0
    p "you have to hit or stay now"
  elsif @hand == 0
    2.times do
      i = rand(@deck.count)
      if @deck[ i ] == 11
        if @soft == true
          @double_soft = true
        end
        @soft = true
        p "player has an ace"
      end
      @hand += @deck[ i ]
      if (@hand > 21) && @double_soft
        @hand -= 10
        @double_soft = false
        p "player ace value changed to 1"
      elsif (@hand > 21) && @soft
        @hand -= 10
        @soft = false
        p "player ace value changed to 1"
      end
      p "card is #{@deck[ i ]}"
      @deck.delete_at(i)
    end
    p "Your hand is #{@hand}"

    2.times do
      i = rand(@deck.count)
      if @deck[ i ] == 11
        if @dealer_soft == true
          @dealer_double_soft = true
        end
        @dealer_soft = true
        p "dealer has an ace"
      end      
      @dealer += @deck[ i ]
      if (@dealer > 21) && @dealer_double_soft
        @dealer -= 10
        @dealer_double_soft = false
        p "dealer ace value changed to 1"
      elsif (@dealer > 21) && @dealer_soft
        @dealer -= 10
        @dealer_soft = false
        p "dealer ace value changed to 1"
      end
      p "card is #{@deck[ i ]}"
      @deck.delete_at(i)
    end
    p "Dealer's hand is #{@dealer}"
  end
  if @hand == 21
    outcome
  elsif @dealer == 21
    outcome
  else
    next_move
  end
end

def hit
  if @hand == 0
    p "you have to deal first"
    next_move
  else
    i = rand(@deck.count)
    if @deck[ i ] == 11
      if @soft == true
        @double_soft = true
      end
      @soft = true
      p "player has an ace"
    end
    @hand += @deck[ i ]
    p "card is #{@deck[ i ]}"
    @deck.delete_at(i)
    if (@hand > 21) && @double_soft
      @hand -= 10
      @double_soft = false
      p "player ace value changed to 1"
    elsif (@hand > 21) && @soft
      @hand -= 10
      @soft = false
      p "player ace value changed to 1"
    end
    if @hand > 21
    p "Your hand is #{@hand}"
      outcome
    else
      p "Your hand is #{@hand}"
      @hasnt_hit = false
      next_move
    end
  end
end

def hit_dealer
  i = rand(@deck.count)
  if @deck[ i ] == 11
    if @dealer_soft == true
      @dealer_double_soft = true
    end
    @dealer_soft = true
    p "dealer has an ace"
  end 
  @dealer += @deck[ i ]
  p "card is #{@deck[ i ]}"
  if (@dealer > 21) && @dealer_double_soft
    @dealer -= 10
    @dealer_double_soft = false
    p "dealer ace value changed to 1"
  elsif (@dealer > 21) && @dealer_soft
    @dealer -= 10
    @dealer_soft = false
    p "dealer ace value changed to 1"
  end
  @deck.delete_at(i)
  p "Dealer's hand is #{@dealer}"
end

def bet
  if @bet > 0
    p "you have already bet"
  elsif @bet == 0
    print "How much are you betting:"
    @bet = gets.chomp.to_f.round(2)
    if @bet < 0
      p "bet must be positive"
    end
    @wallet -= @bet
    p "bet is #{@bet}"
  elsif @bet > @wallet
    p "bet is too high"
    @bet = 0
  end
  next_move
end

def outcome 
  if @hand == @dealer
    p "player and dealer push"
    @wallet += @bet
    @bet = 0
  elsif @hand > 21
    p "player busts"
    p "dealer wins"
    @bet = 0
  elsif (@hand == 21) && @hasnt_hit
    p "player got 21"
    p "payout is 2.5 times your bet"
    @wallet += 2.5*@bet
    @bet = 0
  elsif @dealer > 21
    p "dealer busts"
    p "player wins"
    @wallet += 2*@bet
    @bet = 0
  elsif @hand > @dealer
    p "player wins"
    @wallet += 2*@bet
    @bet = 0
  elsif @dealer > @hand
    p "dealer wins"
    @bet = 0
  end
  reset_game
  next_move
end

def next_move
  p "waiting on your next move"
  nm = gets.chomp
  send nm
end

def stay
  while @dealer < 17
   hit_dealer
  end
  outcome
end

def wallet
  p @wallet.round(2)
  next_move
end


def add_money_to_wallet
  p "how much money would you like to add to your wallet?"
  lost = gets.chomp.to_f.round(2)
  @wallet += lost
  @total_loses += lost
  next_move
end

def leave
  p "You have $#{@wallet} in your wallet"
  if (@wallet - @initial_amount - @total_loses) >= 0
    p "Your winnings are #{@wallet - @initial_amount - @total_loses}"
  else
    p "Your total loses are #{@wallet - @initial_amount - @total_loses}"
  end
end

def reset_game
  @dealer = 0
  @hand = 0
  @bet = 0
  @soft = false
  @double_soft = false
  @dealer_soft = false
  @dealer_double_soft = false
  @hasnt_hit = true
  @deck = (1..52).to_a.map{ |j| j % 13}
  @deck.map!{ |j| if j > 10 then j = 10 else j end}
  @deck.map!{ |j| if j == 0 then j = 10 else j end}
  @deck.map!{ |j| if j == 1 then j = 11 else j end}
end

# ready_yet? method
# take into account bet and hand value
# to direct player to right action
def soft_ace
  # softy method refactor for when an ace is played
end

def help
  p "Here's a list of what you can do: bet, deal, hit, stay, add_money_to_wallet, wallet, leave, help"
  next_move
end

start_blackjack