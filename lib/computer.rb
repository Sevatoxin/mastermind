require_relative "display"
class Computer
  attr_accessor :code, :feedback

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
      # BUG: exact correct ones still count towards correct colors
      if @code[index] == pin
        @feedback[:correct] += 1
        @feedback[:correct_color] -= 1 # Short fix for adding correct ones to correct colors
      end
      @feedback[:correct_color] += 1 if @code.include?(pin)
    end
    Display.feedback(@feedback[:correct_color], @feedback[:correct])
    @feedback
  end
end