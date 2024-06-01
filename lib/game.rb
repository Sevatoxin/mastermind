require_relative "computer"
class Game
  def initialize
    @comp = Computer.new
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

  def start_game
    @comp.create_code
end