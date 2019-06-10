class Question
  attr_accessor :number1, :number2, :operator
  attr_reader :current_player, :other_player

 def initialize (current_player, other_player, operator, round)
   @number1 = rand(20)
   @number2 = rand(20)
   @current_player = current_player
   @other_player = other_player
   @operator = operator
   @round = round
 end

  def random_operator
   operation = @operator.sample
   operation.to_sym
 end

 def question
   @questionOperator = random_operator
   puts "-----------Round #{@round} - Fight -----------"
   puts "#{@current_player.name} What is #{@number1} #{@questionOperator} #{@number2}?"

 end

  def status_right
      puts "got'em"
      puts "Current lives : #{@current_player.name} - #{@current_player.lives} --- #{@other_player.name} - #{@other_player.lives}"
end

 def status_wrong
      puts "Wrong"
      puts "The answer is #{@answer}"
      current_player.lives -= 1
      puts "Current lives : #{@current_player.name} - #{@current_player.lives} --- #{@other_player.name} - #{@other_player.lives}"
 end



 def answer
    @answer = eval"#{@number1} #{@questionOperator} #{number2}"
    player_answer = gets.to_i

    if player_answer == @answer
      status_right
    else
      status_wrong
    end

  end


end
