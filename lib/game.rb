require_relative "computer"
require_relative "display"
class Game
  include Display

  def initialize
  end

  def self.code_to_colors(code)
    colors = []
    code.each do |color|
      case color
      when "g"
        colors.push(:green)
      when "r"
        colors.push(:red)
      when "m"
        colors.push(:magenta)
      when "c"
        colors.push(:cyan)
      when "y"
        colors.push(:yellow)
      when "b"
        colors.push(:blue)
      end
    end
    colors
  end

  def start_game(player, comp)
    Display.welcome
    Display.computer_choice_message
    comp.create_code
    play_game(player, comp)
  end

  def play_game(player, comp)
    player.make_guess
    comp.give_feedback(player.guess)
    check_gamestate(player, comp)
  end

  def check_gamestate(player, comp)
    return game_won(player) if player.turn <= 12 && comp.feedback[:correct] == 4
    return game_over(comp.code) if player.turn > 12

    play_game(player, comp)
  end

  def game_won(player)
    Display.won(player.turn)
  end

  def game_over(computer_code)
    Display.game_over(computer_code)
  end
end