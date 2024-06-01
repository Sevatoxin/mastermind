class Player
  include Display
  attr_accessor :turn, :guess

  def initialize
    @turn = 0
    @possible_colors = %w[g r m c b y]
    @guess
  end

  def make_guess
    guess = gets.chomp
    guess_arr = guess.split("")
    guess_arr.each do |pin|
      return new_guess if @possible_colors.include?(pin)
    end
    Display.show_code
    @guess = guess_arr
  end

  def new_guess
    Display.new_guess_message
    make_guess
  end
end