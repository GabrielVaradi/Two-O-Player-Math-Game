class Turn
  attr_reader :current_player, :ennemy_player
  attr_accessor :round

   def initialize players
   @round = 1
   @current_player = nil
   @ennemy_player = nil
   @players = players.shuffle
   end

   def get_player1
    @players.first
   end

   def get_player2
    @players.last
   end

  def next_round
    @round += 1
    @players.rotate!
  end


end
