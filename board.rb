require 'memory_puzzle'

class Board

    def initialize(num=4)
        if !(num.is_even?)
            raise "enter even number"
        end
        @grid = Array.new(num) {Array.new(num)}
    end

    def populate
        alpha = ("A".."Z").to_a
        #lets populate this grid with num**2 / 2 pairs
        
    end

    def render
    end

    def won?
    end

    def reveal
    end

end