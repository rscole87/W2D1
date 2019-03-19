class Piece
    attr_reader :name

    def initialize(name = "P")
        @name = name
    end

    # def inspect
    #     puts @name
    # end

    def moves
        #Returns potential piece positions.
    end
end

class NullPiece < Piece
    def initialize
        super(" ")
    end
end

