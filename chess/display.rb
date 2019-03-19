require_relative "board"
require_relative "cursor"
require "colorize"
require "byebug"

class Display
    attr_reader :board, :cursor

    def initialize(board)
        @cursor = Cursor.new([0,0], board)
        @board = board
    end

    def render
        cursor_pos = cursor.cursor_pos
        
        (0...board.grid.length).each do |row|
            this_line = ""
            board.grid[row].each_with_index do |piece, col|
                if [row, col] == cursor_pos
                    this_line += "#{board[*cursor_pos].name.colorize(:red)} "
                else
                    this_line += "#{piece.name} "
                end
            end
            puts this_line
        end 
    end
end

if __FILE__ == $PROGRAM_NAME
    board = Board.new
    display = Display.new(board)
    display.render

    while true
        
        display.cursor.get_input
        system("clear")
        display.render
    end
end