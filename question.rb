require_relative 'player.rb'

class Question

  attr_accessor :num1, :num2

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask(name)

    puts "#{name}: What does #{num1} plus #{num2} equal?"

  end

  def answer_correct?(name)
    
    answer = gets.chomp.to_i
    sum = num1 + num2

    if answer == sum
      puts "#{name}: Good for you! You know basic math!"
      puts ""
      true
    else
      puts "#{name}: Dude... No! (you lost a life)"
      puts ""
      false
    end

  end
end
