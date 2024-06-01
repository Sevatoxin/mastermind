require "colorize"
module Display

  def welcome
    puts "Welcome to Mastermind ".colorize(:green) + "\ue28c".colorize(:red)
  end

  def computer_choice_message
    puts "The computer choose a Code!".colorize(:green)
  end

  def player_input_message
    puts "Please enter a code you think the computer choose.".colorize(:green)
    puts "Input must contain 4 pins in this format: (g)reen, (r)ed, (m)agenta, (b)lue, (y)ellow, (c)yan".colorize(:green)
  end

  def new_guess_message
    puts "Please enter a code that represents the colors (g)reen, (r)ed, (m)agenta, (b)lue, (y)ellow, (c)yan for example: 'grbb'".colorize(:red)
  end

  def show_code(code)
    code_colors = Game.code_to_colors(code)
    pins = ["\uf041".colorize(code_colors[0]), "\uf041".colorize(code_colors[1]), "\uf041".colorize(code_colors[2]), "\uf041".colorize(code_colors[3])]
    puts "\n    #{pins[0]} #{pins[1]} #{pins[2]} #{pins[3]}"
  end

  def feedback(white, black)
    puts "You got #{white} colors correct."
    puts "You got #{black} colors and positions correct. (This does not count to correct colors!)"
  end

  def won(player_turn)
    puts "You needed #{player_turn} turn(s) to guess the code and beat the computer!".colorize(:green)
  end
  
  def game_over(computer_code)
    puts "You needed more than 12 rounds and could not guess the code. Try again!".colorize(:red)
    puts "The code was:".colorize(:red)
    show_code(computer_code)
  end

  def show_current_turn(turn)
    puts "Turn: #{turn}"
  end
end