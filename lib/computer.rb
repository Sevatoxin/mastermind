class Computer
  include Display
  attr_accessor :code

  def initialize
    @code_colors = %w[green red magenta blue yellow cyan]
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
end