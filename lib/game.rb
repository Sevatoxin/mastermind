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
    Display.show_code(comp.code) # Needs be removed at the end
    player.make_guess
  end
end