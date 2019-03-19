require_relative "piece"

class Board

    attr_reader :grid

    def initialize
        @grid = Array.new(8) {Array.new(8, "_")}
        reset
        render
    end

    def reset
        grid.each_with_index do |row, i|
            next if i > 1 && i < 6
            row.each_with_index do |col, j|
                grid[i][j] = 'P'
            end
        end
    end

    def render
        # 8.times do |i|
        #     puts 
        # end

        grid.each_with_index do |row, i|
            puts grid[i].join(" ") 
        end
        puts
    end

    def move_piece(start_pos, end_pos)
        a,b = start_pos
        x,y = end_pos
        piece = self[a,b]
        if piece == "_"
            raise "There is no piece at your start position."
        elsif !valid_move?(start_pos, end_pos)
            raise "Your piece can't move there!"
        else
            self[x,y] = piece
            self[a,b] = "_"
        end
        render
        puts
    end

    def [](row, col)
        @grid[row][col]
    end

    def[]=(row, col, piece)
        @grid[row][col] = piece
    end

    def valid_move?(start_pos, end_pos)
        return true
    end


end