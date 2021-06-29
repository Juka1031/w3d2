require 'memory_puzzle'

class Board

    def initialize(num=4)
        if !(num.is_even?)
            raise "enter even number"
        end
        @grid = Array.new(num) { Array.new(num, nil) }
    end

    def populate
        alpha = ("A".."Z").to_a
        #lets populate this grid with num**2 / 2 pairs
        pairs = @grid.length ** 2 / 2
        pair = []
        while pair.length != pairs
            picked = alpha.sample
            if !pair.include?(picked)
                pair << picked
            end
        end

        while @grid.count(nil) != 0
            x = rand(0...@grid.length)
            y = rand(0...@grid.length)

            



    end

    def render
    end

    def won?
    end

    def reveal
    end

end