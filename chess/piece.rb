require 'singleton'
require_relative 'slide_and_step'

class Piece
    attr_reader :name, :color, :board
    attr_accessor :pos

    def initialize( color, board, position,  name = "P")
        @name = name
        @board = board
        @color = color
        @pos = position
    end

    # def inspect
    #     puts @name
    # end
end

class NullPiece
    include Singleton 

    def initialize
        # super(nil, board, " ")
        @symbol = " "
        @color = :none
    end

    def moves
    end
end

class Bishop < Piece
    include Slideable

    def move_dirs
        diagonal_dirs
    end

end

class Rook < Piece
    include Slideable

    def move_dirs
        horizontal_and_vertical_dirs
    end
end

class Queen < Piece
    include Slideable

    def move_dirs
        horizontal_and_vertical_dirs + diagonal_dirs
    end
end

