class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times.\nPlease enter a string\n"
    input_string = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats\n"
    num_repeat = @terminal.gets.chomp.to_i
    result = "#{input_string}" * num_repeat
    @terminal.puts "Here is your result:\n#{result}"
  end
end

string_repeater = StringRepeater.new(Kernel)
string_repeater.run

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX