require "colorize"
module Display

  def welcome
    puts "Welcome to Mastermind ".colorize(:green) + "\ue28c".colorize(:red)
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
    code_colors = Game.code_to_colors(code)
    pins = ["\uf041".colorize(code_colors[0]), "\uf041".colorize(code_colors[1]), "\uf041".colorize(code_colors[2]), "\uf041".colorize(code_colors[3])]
    puts "\n    #{pins[0]} #{pins[1]} #{pins[2]} #{pins[3]}"
  end
end