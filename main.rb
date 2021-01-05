require_relative 'player.rb'
require_relative 'score.rb'
require_relative 'question.rb'

class Game

  attr_accessor :player1, :player2

  include Score

  def initialize()
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
  end

  def run_game(player)

    question = Question.new
    question.ask(player.name)
    
    if !question.answer_correct?(player.name)
      player.lives -= 1
      # puts "lives remaining #{player.lives}"
    end

  end

  def end_game()
    puts ""
    puts "---- GAME OVER ----"
    puts ""
  end

  def start

    while player1.lives > 0 && player2.lives do
      
      self.run_game(player1)

      break if player1.is_loser

      update_score(player1, player2)

      self.run_game(player2)

      break if player2.is_loser

      update_score(player1, player2)

    end

    if player1.is_loser
      puts "#{player2.name} wins with a score of #{player2.lives}/3"
    else
      puts "#{player1.name} wins with a score of #{player1.lives}/3"
    end

    self.end_game
    
  end
end

game = Game.new
game.start