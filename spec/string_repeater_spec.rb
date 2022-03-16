require 'string_repeater'

RSpec.describe StringRepeater do
  it "repeats a string many times" do
    terminal_dbl = double :terminal_dbl
    expect(terminal_dbl).to receive(:puts).with("Hello. I will repeat a string many times.\nPlease enter a string\n")
    expect(terminal_dbl).to receive(:gets).and_return("TWIX")
    expect(terminal_dbl).to receive(:puts).with("Please enter a number of repeats\n")
    expect(terminal_dbl).to receive(:gets).and_return("10")
    expect(terminal_dbl).to receive(:puts).with("Here is your result:\nTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX")

    string_repeater = StringRepeater.new(terminal_dbl)
    string_repeater.run
  end
end