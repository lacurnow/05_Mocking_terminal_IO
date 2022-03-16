require 'interactive_calculator'

RSpec.describe InteractiveCalculator do
  it "gets user input from the terminal" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.\nPlease enter a number\n").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Please enter another number\n").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    new_calculator = InteractiveCalculator.new(terminal)
    new_calculator.input
  end

  it "subtracts the second user input from the first" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.\nPlease enter a number\n").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Please enter another number\n").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    new_calculator = InteractiveCalculator.new(terminal)
    new_calculator.input
    expect(new_calculator.subtract).to eq 1
  end

  it "puts the formatted subtraction output to terminal" do
    terminal = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will subtract two numbers.\nPlease enter a number\n").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Please enter another number\n").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:\n4 - 3 = 1")
    new_calculator = InteractiveCalculator.new(terminal)
    new_calculator.input
    new_calculator.subtract
    new_calculator.result
  end
end