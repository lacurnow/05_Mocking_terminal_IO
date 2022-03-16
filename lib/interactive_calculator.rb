class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
    @first_num = ""
    @sec_num = ""
    @sub_res = 0
  end

  def input
    @terminal.puts "Hello. I will subtract two numbers.\nPlease enter a number\n"
    @first_num = @terminal.gets.chomp
    @terminal.puts "Please enter another number\n"
    @sec_num = @terminal.gets.chomp
  end

  def subtract
    @sub_res = @first_num.to_i - @sec_num.to_i
    # subtracts the second user input from the first
  end
  
  def result
    @terminal.puts"Here is your result:\n#{@first_num} - #{@sec_num} = #{@sub_res}"
    # puts the formatted subtraction output to terminal
  end
end





#interactive_calculator = InteractiveCalculator.new(Kernel)
#interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1