class Ball
    attr_accessor :x, :y, :height

    def initialize(window)
        @height = 5
        @image = Gosu::Image.new(window, "images/ball.png", true)
        @x = 100.0
        @y = 100.0
        @vel_x = -2
        @vel_y = -2
    end

    def draw
        @image.draw(@x, @y, 1)
    end

    def move
        @x += @vel_x
        @y += @vel_y
    end

    def bounce_x
        @vel_x = -@vel_x
    end

    def bounce_y
        @vel_y = -@vel_y
    end
end
