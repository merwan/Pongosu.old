require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Pongosu"

    @paddle_image = Gosu::Image.new(self, "images/paddle.png", true)
  end
  
  def update
  end
  
  def draw
      @paddle_image.draw(10, 215, 0)
  end
end

window = GameWindow.new
window.show
