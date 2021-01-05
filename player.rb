class Player

  attr_accessor :name, :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def is_loser

    if @lives == 0
      loser = true
    end
  end 
  
end