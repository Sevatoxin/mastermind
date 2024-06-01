require_relative "display"
class Computer
  attr_accessor :code

  include Display

  def initialize
    @code_colors = %w[g r m b y c]
    @code = []
  end

  def create_code
    rng = Random.new
    4.times do
      color = rng.rand(0..@code_colors.length-1)
      @code.push(@code_colors[color])
    end
  end

  def give_feedback(guessed_code)
    guessed_code.each do |pin|
      # Is in code included? Then the color matches
      # Is the exact same as in code? Then it is a perfect value
    end
  end
end