class Piece
    attr_reader :name

    def initialize(name = "piece")
        @name = name
    end

    def inspect
        @name
    end
end

class NullPiece < Piece

end