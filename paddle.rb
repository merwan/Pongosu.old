class Paddle
    def initialize(window)
        @image = Gosu::Image.new(window, "images/paddle.png", true)
        @x = 10
        @vel_y = 5
        @y = 0.0
    end

    def move_up
        @y -= @vel_y
    end

    def move_down
        @y += @vel_y
    end

    def draw
        @image.draw(@x, @y, 1)
    end
end
