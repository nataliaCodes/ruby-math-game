class Question

  attr_accessor :num1, : num2

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def ask_question(player)

    puts "#{player.name}: What does #{num1} plus #{num2} equal?"

  end

  def answer_correct?
    answer = gets.chomp.to_i
    sum = num1 + nnum2

    if answer == sum
      true
    else
      false
    end
  end

end
