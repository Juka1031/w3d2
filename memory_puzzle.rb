
class Card

    def initialize(char)
        @state = false
        @char = char
    end

    def turn_over
        @state = !@state
    end

    def to_s


end