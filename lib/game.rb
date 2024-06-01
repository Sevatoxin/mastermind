class Game
  def initialize
  end

  def self.code_to_colors(code)
    colors = []
    code.each do |color|
      case color
      when "g" do colors.push(:green)
      when "r" do colors.push(:red)
      when "m" do colors.push(:magenta)
      when "c" do colors.push(:cyan)
      when "y" do colors.push(:yellow)