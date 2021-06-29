require_relative 'board.rb'

class Game
    def initialize(num=4)
        @board = Board.new(num).populate
        # @previously_guessed = []
    end

    def play
        while !@board.won?
            puts "Enter first guess position such as '1 7'" 
            guessed_pos = gets.chomp.split(" ").map { |num| num.to_i }
            raise "error" if guessed_pos.any? { |num| num>@board.length }
            @board.reveal(guessed_pos)

            @board.render #put render

            puts "Enter second position"
            second_guessed_pos = gets.chomp.split(" ").map { |num| num.to_i }
            raise "error" if second_guessed_pos.any? { |num| num>@board.length }
            @board.reveal(second_guessed_pos)

            @board.render #put render

            if @board[guessed_pos] != @board[second_guessed_pos]
                @board[guessed_pos[0]][guessed_pos[1]].turn_over
                @board[second_guessed_pos[0]][second_guessed_pos[1]].turn_over
            end

            @board.render
            # puts render
        end 

    end

    
end
