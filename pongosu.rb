require 'gosu'

class GameWindow < Gosu::Window
  def initialize
    super 640, 480, false
    self.caption = "Pongosu"
  end
  
  def update
  end
  
  def draw
  end
end

window = GameWindow.new
window.show
