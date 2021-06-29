
class Card
    attr_reader :char
    def initialize(char)
        @state = true #true is face up and false is face down
        @char = char
    end

    def turn_over
        @state = !@state
    end

    def to_s
        @char.to_s
    end

    def ==(char_2)
        @char == char_2
    end

end

