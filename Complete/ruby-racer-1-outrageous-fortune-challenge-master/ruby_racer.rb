class RubyRacer
  attr_reader :players, :die, :length

  def initialize(players, die, length = 30)
    @players = players.map! {|player| player = {name: player.to_s,
                                                location: 0}}
    @die = die
    @length = length
  end

  # Returns +true+ if one of the players has reached
  # the finish line, +false+ otherwise
  def finished?
    false
    return true if @players[0][:location] >= @length || @players[1][:location] >= @length
  end

  # Returns the winner if there is one, +nil+ otherwise
  def winner
    if @players[0][:location] > players[1][:location]
      return @players[0][:name]
    else
      return @players[1][:name]
    end
  end

  # Rolls the die and advances +player+ accordingly
  def advance_player(player)
    roll = die.roll
    puts "#{player[:name]} rolled a #{roll}"
    player[:location] += die.roll
    return player[:location] = 30 if player[:location] >30
  end

  # Returns the current state of the game as a string
  # that can be printed on the command line.
  # The board should have the same dimensions each time.
  def board_visualization
    display_board = ""
    @players.each do |player|
      board = ""
      for i in 0..length
        i == player[:location]? board << "#{player[:name]} |  " :
                                board << " |  "
      end
      board << "\n"
      display_board << board
    end
    display_board
  end
end
