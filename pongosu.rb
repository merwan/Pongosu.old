require 'gosu'
require_relative 'paddle'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Pongosu"

    @paddle = Paddle.new(self)
  end
  
  def update
  end
  
  def draw
      @paddle.draw
  end
end

window = GameWindow.new
window.show
