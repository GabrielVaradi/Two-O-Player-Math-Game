require_relative './Players'
require_relative './Turn'
require_relative './Question'

class Game

 def initialize
   puts "Player 1 : Enter your name"
   @player1 = Players.new gets.chomp
   puts "Player 2 : Enter your name"
   @player2 = Players.new gets.chomp
   @players = [@player1, @player2]
   @sign = ["+", "-", "*"]
   @turn = Turn.new(@players)


 end

 def game_over?
   @player1.dead? || @player2.dead?
 end

 def game_over!
    puts "Congratulations #{@other_player.name}, you've won!"
 end

 def run
  until (game_over?)
    @current_player = @turn.get_player1
    @other_player = @turn.get_player2
    question = Question.new(@current_player, @other_player, @sign, @turn.round)
    question.question
    question.answer
    @turn.next_round
  end

 game_over!

 end


end

