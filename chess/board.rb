require_relative "piece"

class Board

    attr_reader :grid

    def initialize
        @grid = Array.new(8) {Array.new(8)}
        reset
    end

    def reset
        grid.each_with_index do |row, i|
            if i > 1 && i < 6
                row.each_with_index do |col, j|
                    grid[i][j] = NullPiece.new
                end
            else   
                row.each_with_index do |col, j|
                    grid[i][j] = Piece.new(:red, self, [i,j])
                end
            end
        end
    end


    def move_piece(start_pos, end_pos)
        a,b = start_pos
        x,y = end_pos
        piece = self[a,b]
        if piece.is_a?(NullPiece)
            raise "There is no piece at your start position."
        elsif !valid_move?(start_pos, end_pos)
            raise "Your piece can't move there!"
        else
            self[x,y] = piece
            self[a,b] = NullPiece.new
        end
        # puts
    end

    def [](row, col)
        @grid[row][col]
    end

    def[]=(row, col, piece)
        @grid[row][col] = piece
    end

    def valid_move?(start_pos, end_pos)
        return false if !self[*end_pos].is_a?(NullPiece)
        true
    end

    def valid_pos?(pos)
        pos.each do |value|
            return false if value < 0 || value > 7
        end
        true
    end


end