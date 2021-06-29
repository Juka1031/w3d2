require '/Users/sydneyparsons/Documents/App_Academy_Work/W3/W3D2/card.rb'
require 'byebug'
class Board

    def initialize(num=4)
        if !(num.even?)
            raise "enter even number"
        end
        @grid = Array.new(num) { Array.new(num, nil) }
    end
    
    def populate
        alpha = ("A".."Z").to_a
        pairs = @grid.length ** 2 / 2
        pair = []
        while pair.length != pairs
            picked = alpha.sample
            if !pair.include?(picked)
                pair << picked
            end
        end
        # debugger
        placed = false
        while @grid.flatten.count(nil) != 0 #while the grid contains nil
            pair.each do |card|
                # debugger 
                placed = true   
                while placed
                    placed = false    
                    x = rand(0...@grid.length) #x= 0
                    y = rand(0...@grid.length)   
                    if @grid[x][y] == nil
                        placed = true
                        @grid[x][y] = card #intialize new card instance
            
                    end
                end
            end
        end
        @grid
    end

    def render
        count = 0

        print "  "
        @grid.length.times do
            print "#{count} "
            count += 1
        end
        puts
        @grid.each_with_index do |sub_array, idx|
            puts "#{idx} " + sub_array.join(" ")
        end

    end

    def won?

    end

    def reveal
    end

end


#ABCDEFGH
                # x = rand(0...@grid.length) #x= 0
                # y = rand(0...@grid.length)  #y=0
                # if @grid[x][y] == nil #if spot is empty
                #     @grid[x][y] = Card.new(card) #intialize new card instance
                # else