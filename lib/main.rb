# Bundled Gems
require "pry-byebug"
require "colorize"
# Class files
require_relative "display"
require_relative "computer"
require_relative "game"
require_relative "player"
include Display
# "\uf041" is the nerd font icon for the pins

game = Game.new
game.start_game