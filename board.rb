require_relative 'card.rb'
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
        while @grid.flatten.count(nil) != 0 #while the grid contains nil
            pair.each do |card| 
                placed = false   #placed = true
                while !placed   #while placed == true
                    placed = false    #plaed = false
                    x = rand(0...@grid.length) #x= 0
                    y = rand(0...@grid.length)   
                    if @grid[x][y] == nil
                        placed = true #placed= true
                        @grid[x][y] = Card.new(card) #intialize new card instance
            
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
        @grid.each_with_index do |row, idx|
            print "#{idx} "
            row.each do |card|
                if card.state == true
                    print card.to_s + " "
                else
                    print " "
                end
            end
            puts
        end

    end

    def [](pos)
        @grid[pos[0]][pos[1]].to_s
    end

    def won?
        @grid.all? { |row| row.all? { |card| card.state == true }}
    end

    def reveal(pos)
        if @grid[pos[0]][pos[1]].state == false #so if guessed postiion is face down we flip it
            @grid[pos[0]][pos[1]].turn_over #we call some method
        end
    end

end


#ABCDEFGH
                # x = rand(0...@grid.length) #x= 0
                # y = rand(0...@grid.length)  #y=0
                # if @grid[x][y] == nil #if spot is empty
                #     @grid[x][y] = Card.new(card) #intialize new card instance
                # else