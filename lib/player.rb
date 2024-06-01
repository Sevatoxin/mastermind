require_relative "display"
require_relative "computer"
class Player
  attr_accessor :turn, :guess

  include Display

  def initialize
    @comp = Computer.new
    @turn = 0
    @possible_colors = %w[g r m c b y]
  end

  def make_guess
    Display.player_input_message
    guess = gets.chomp
    guess_arr = guess.split("")
    guess_arr.each do |pin|
      return new_guess unless @possible_colors.include?(pin)
    end
    return new_guess if guess_arr.length != 4

    Display.show_code(guess_arr)
    @turn += 1
    @guess = guess_arr
  end

  def new_guess
    Display.new_guess_message
    make_guess
  end
end