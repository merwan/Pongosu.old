require 'gosu'
require_relative 'paddle'
require_relative 'ball'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Pongosu"

    @paddle = Paddle.new(self)
    @ball = Ball.new(self)
  end
  
  def update
      if button_down? Gosu::KbUp or button_down? Gosu::GpUp then
          @paddle.move_up
          if @paddle.upper_bound < 0
              @paddle.move_to(0)
          end
      elsif button_down? Gosu::KbDown or button_down? Gosu::GpDown then
          @paddle.move_down
          if @paddle.lower_bound > height
              @paddle.move_to(height - @paddle.height)
          end
      end

      @ball.move
      if @ball.x <= 0 or @ball.x >= width - @ball.height
          @ball.bounce_x
      end
      if @ball.y <= 0 or @ball.y >= height - @ball.height
          @ball.bounce_y
      end
  end
  
  def draw
      @paddle.draw
      @ball.draw
  end
end

window = GameWindow.new
window.show
