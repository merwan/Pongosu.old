require 'gosu'
require_relative 'paddle'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Pongosu"

    @paddle = Paddle.new(self)
  end
  
  def update
      if button_down? Gosu::KbUp or button_down? Gosu::GpUp then
          @paddle.move_up
      end
      if button_down? Gosu::KbDown or button_down? Gosu::GpDown then
          @paddle.move_down
      end
  end
  
  def draw
      @paddle.draw
  end
end

window = GameWindow.new
window.show
