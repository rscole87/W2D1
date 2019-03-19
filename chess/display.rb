require_relative "board"
require_relative "cursor"
require "colorize"

class Display
    def initialize
        @cursor = Cursor.new([0,0], board)
    end

    def render
        (0...grid.length).each do |row|
            this_line = ""
            grid[row].each do |piece|
                if !piece.name.nil?
                    this_line += "#{piece.name} "
                else
                    this_line += "  "
                end
            end
            puts this_line
        end 
        puts 
    end
end