class Paddle
    attr_accessor :height

    def initialize(window, initial_x)
        @height = 50
        @image = Gosu::Image.new(window, "images/paddle.png", true)
        @x = initial_x
        @vel_y = 5
        @y = 0.0
    end

    def upper_bound
        @y
    end

    def lower_bound
        @y + @height
    end

    def right_bound
        @x + 5
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

    def move_to(position)
        @y = position
    end

    def collide?(ball)
        ball.x <= right_bound
    end
end
