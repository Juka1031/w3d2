
class Card

    def initialize(char)
        @state = false #false face up, true is face down
        @char = char
    end

    def turn_over
        @state = !@state
    end

    def to_s
        @card.to_s
    end

    def ==(char_2)
        self.char == char2
    end

end

