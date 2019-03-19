class Piece
    attr_reader :name

    def initialize(name = "P")
        @name = name
    end

    def inspect
        puts @name
    end
end

class NullPiece < Piece
    def initialize
        super(nil)
    end
end