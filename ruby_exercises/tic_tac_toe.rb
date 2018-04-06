class Player
  attr_accessor :player_token, :move, :player
end

class TicTacToe
  @tic_array = Array.new(3, Array.new(3, Array.new(3, "*")))
  @playerx = Player.new
  @playero = Player.new
  @playerx.player_token = "X"
  @playerx.player = "Player X"
  @playero.player = "Player O"
  @playero.player_token = "O"
  puts "welcome to tic-tac-toe"
  @current_player = @playerx
  puts "Player X goes first"
  
  def self.player_turn
    if @current_player == @playerx
      @current_player = @playero
    elsif @current_player == @playero
      @current_player = @playerx
    end
  end
  
  def self.space
    puts "Please put your first coordinate"
    x_input = gets.chomp
    puts "Please put your second coordinate"
    y_input = gets.chomp
    puts "Please put your last coordinate"
    z_input = gets.chomp
    @current_player.move = x_input.to_i-1, y_input.to_i-1, z_input.to_i-1
  end
  
  def self.mark(space_array)
    if @tic_array[space_array[0]][space_array[1]][space_array[2]].match(/#{@playero.player_token}|#{@playerx.player_token}/)
      p "space taken #{@current_player.player}"
    else
      @tic_array[space_array[0]][space_array[1]][space_array[2]] = @current_player.player_token
      player_turn
      p "#{@current_player}'s turn"
    end
    space
    mark(@current_player.move)
    show
  end
  
  def self.show
    @tic_array.each do |i| 
      i.each do |j| 
        j.each do |k|
          print " #{k} "
        end
        puts ""
      end
      puts ""
    end
  end
  
  space
  mark(@current_player.move)
end
  
  def self.show
    tic_array.each do |i| 
      if (0..8).to_a.include?(i)
        print " #{i} "
        if [2,5,8].include?(i)
          puts
          if i == 8
            puts
          end
        end
      end

      if (9..17).to_a.include?(i)
        print " #{i} "
        if [11,14,17].include?(i)
          puts
          if i == 17
            puts
          end
        end
      end

      if (18..26).to_a.include?(i)
        print " #{i} "
        if [20,23,26].include?(i)
          puts
        end
      end
    end
  end
  
  space
  mark(@current_player.move)
end