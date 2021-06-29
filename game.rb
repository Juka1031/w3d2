require_relative 'board.rb'

class Game
    def initialize(num=4)
        @board = Board.new(num)
        # @previously_guessed = []
    end

    def play
        puts "Enter first guess position such as '1 7'" 
        guessed_pos = gets.chomp.split(" ").map { |num| num.to_i }
        raise "error" if guessed_pos.any? { |num| num>@board.length }
        first_guess = @board.reveal(guessed_pos)
        #put render
        puts "Enter second position"
        second_guessed_pos = gets.chomp.split(" ").map { |num| num.to_i }
        raise "error" if second_guessed_pos.any? { |num| num>@board.length }
        second_guess = @board.reveal(second_guessed_pos)
        #put render
        if first_guess != second_guess 

    end

    
end
