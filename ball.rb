class Ball
    def initialize(window)
        @height = 5
        @image = Gosu::Image.new(window, "images/ball.png", true)
        @x = 100.0
        @y = 100.0
    end

    def draw
        @image.draw(@x, @y, 1)
    end
end
