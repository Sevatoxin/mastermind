require_relative "display"
class Computer
  attr_accessor :code

  include Display

  def initialize
    @code_colors = %w[g r m b y c]
    @code = []
  end

  def create_code
    # Pseudocode: 
    # 4 times go through all colors and select on by random
    # Add all choosesn colors to a new array that contains the choosen color code
    rng = Random.new
    4.times do
      color = rng.rand(0..@code_colors.length-1)
      @code.push(@code_colors[color])
    end
  end

  def give_feedback(guessed_code)
  end
end