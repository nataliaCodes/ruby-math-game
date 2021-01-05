require_relative 'player.rb'
require_relative 'score.rb'
require_relative 'question.rb'

class Game

  attr_accessor :player1, :player2

  def initialize(P1, P2)
    @player1 = P1
    @player2 = P2
  end

  def start

    ask_question(player1)
  
  end

end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")
game = Game.new(player1, player2)
game.start