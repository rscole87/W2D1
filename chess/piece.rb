require 'singleton'

class Piece
    attr_reader :name, :color, :symbol

    def initialize(name = "P")
        @name = name
        @color = "c"
        @symbol = "s"
    end

    # def inspect
    #     puts @name
    # end

    def moves
        #Returns potential piece positions.
    end
end

class NullPiece < Piece
    include Singleton 

    def initialize
        super(" ")
    end
end

class Bishop

end

class Rook
end

class Queen
end

module Slideable 

end

module Stepable

end