class Score

  attr_reader :name, :lives, :score

  def initialize(player)
    @name = player.name
    @lives = player.lives
    @score = "#{@lives}/3"
  end

  def update
    
    while @lives > 0 do

      puts "Score: #{score}"
      break if @lives == 0
      puts ""
      puts "---- NEW TURN ----"
      puts ""

    end
  end
end