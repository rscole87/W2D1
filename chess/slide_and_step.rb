module Slideable 
    HORIZONTAL_AND_VERTICAL_DIRS = [[0,1],[0,-1],[1,0],[-1,0]]
    DIAGONAL_DIRS = [[1,1],[-1,1],[-1,-1],[1,-1]]

    def horizontal_and_vertical_dirs 
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    def moves
        #Returns potential piece positions.
        move_options = Array.new
        move_dirs.each do |dir|
            move_options << [dir.first+pos.first, dir.last+pos.last]
        end
        move_options
    end

    def grow_unblocked_moves_in_dir(dx, dy)

    end
end

module Stepable
    def moves
        #Returns potential piece positions.
    end
end