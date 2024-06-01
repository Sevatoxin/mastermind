require_relative "display"
class Computer
  attr_accessor :code

  include Display

  def initialize
    @code_colors = %w[g r m b y c]
    @code = []
    @feedback = {correct: 0, correct_color: 0}
  end

  def create_code
    rng = Random.new
    4.times do
      color = rng.rand(0..@code_colors.length-1)
      @code.push(@code_colors[color])
    end
  end

  def give_feedback(guessed_code)
    @feedback[:correct] = 0
    @feedback[:correct_color] = 0
    guessed_code.each_with_index do |pin, index|
      # Is in code included? Then the color matches
      # Is the exact same as in code? Then it is a perfect value
      @feedback[:correct_color] += 1 if @code.include?(pin)
      @feedback[:correct] += 1 if @code[index] == pin
    end
  end
end