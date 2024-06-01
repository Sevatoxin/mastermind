require "colorize"
module Display

  def welcome
    puts "Welcome to Mastermind \ue28c".colorize(:green)
  end

  def computer_choice_message
    puts "The computer choose a Code!".colorize(:green)
  end

  def player_input_message
    puts "Please enter code you think the computer choose.".colorize(:red)
    puts "Input must contain 4 pins in this format: (g)reen, (r)ed, (m)agenta, (b)lue, (y)ellow, (c)yan"
  end

  def new_guess_message
    puts "Please enter a code that represents the colors (g)reen, (r)ed, (m)agenta, (b)lue, (y)ellow, (c)yan for example: 'grbb'"
  end

  def show_code(code)
    puts "#{code}"
  end
end