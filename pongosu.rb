require 'gosu'
require_relative 'paddle'
require_relative 'ball'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Pongosu"

    @paddle = Paddle.new(self, 10)
    @paddle2 = Paddle.new(self, 620)
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
      if button_down? Gosu::KbE then
          @paddle2.move_up
          if @paddle2.upper_bound < 0
              @paddle2.move_to(0)
          end
      elsif button_down? Gosu::KbD then
          @paddle2.move_down
          if @paddle2.lower_bound > height
              @paddle2.move_to(height - @paddle2.height)
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
      @paddle2.draw
      @ball.draw
  end
end

window = GameWindow.new
window.show
