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
        pair = [] #pair will contain 8 charcs
        while pair.length != pairs
            picked = alpha.sample
            if !pair.include?(picked)
                pair << picked
            end
        end
        pair_pos=0
        while @grid.count(nil) != 0 #while the grid contains nil

            pair.each do |card| #ABCDEFGH
                # x = rand(0...@grid.length) #x= 0
                # y = rand(0...@grid.length)  #y=0
                # if @grid[x][y] == nil #if spot is empty
                #     @grid[x][y] = Card.new(card) #intialize new card instance
                # else
                placed = false
                while placed != true
                    x = rand(0...@grid.length) #x= 0
                    y = rand(0...@grid.length)
                    if @grid[x][y] == nil
                        placed = true
                        @grid[x][y] = Card.new(card) #intialize new card instance
                    end
                end
            end
        end
    end

    def render
        count = 0
        @grid.length.times do
            print "#{count} "
            count += 1
        end

        @grid.each_with_index do |sub_array, idx|
            puts "#{idx} " + sub_array.join(" ")
        end

    end

    def won?
    end

    def reveal
    end

end