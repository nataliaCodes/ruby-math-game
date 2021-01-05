class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def ask_question
    random1 = rand(1..20)
    random2 = rand(1..20)
    sum = random1 + random2
    puts "#{name}: What does #{random1} plus #{random2} equal?"
    answer = gets.chomp.to_i

    if answer == sum
      true
    else
      false
    end
  end
end

player1 = Player.new("Player 1")
player2 = Player.new("Player 2")

def run_game(player)

  if player.ask_question
    puts "#{player.name}: Good for you! You know basic math!"
  else
    player.lives -= 1
    puts "#{player.name}: Dude... No! (you lost a life)"
  end

end

def game(player1, player2)

  while player1.lives > 0 && player2.lives > 0 do

    puts run_game(player1)
    break if player1.lives == 0
    puts "Lives: P1 = #{player1.lives}/3 , P2 = #{player2.lives}/3"
    puts ""
    puts "---- NEW TURN ----"
    puts ""
    puts run_game(player2)
    puts "Lives: P1 = #{player1.lives}/3 , P2 = #{player2.lives}/3"
    puts ""
    puts "---- NEW TURN ----"
    puts ""

  end

  if player1.lives > 0
    winner = player1.name
    score = "#{player1.lives}/3"
  else
    winner = player2.name
    score = "#{player2.lives}/3"
  end

  puts "#{winner} wins with a score of #{score}"
  puts ""
  puts "---- GAME OVER ----"
  puts ""
end

game(player1, player2)