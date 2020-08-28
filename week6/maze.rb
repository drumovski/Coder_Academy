# Maze Runner

# Introduction
#      Welcome Adventurer. Your aim is to navigate the maze and reach the finish point without
#      touching any walls. Doing so will kill you instantly!

# Task
#      You will be given a 2D array of the maze and an array of directions.
#      Your task is to follow the directions given.
#      If you reach the end point before all your moves have gone, you should return Finish.
#      If you hit any walls or go outside the maze border, you should return Dead.
#      If you find yourself still in the maze after using all the moves, you should return Lost.

# The Maze array will look like

# maze = [[1,1,1,1,1,1,1],
#         [1,0,0,0,0,0,3],
#         [1,0,1,0,1,0,1],
#         [0,0,1,0,0,0,1],
#         [1,0,1,0,1,0,1],
#         [1,0,0,0,0,0,1],
#         [1,2,1,0,1,0,1]]

#         ..with the following key

#         0 = Safe place to walk
#         1 = Wall
#         2 = Start Point
#         3 = Finish Point

# Rules
#     1. The Maze array will always be square i.e. N x N
#     2. The start and finish positions could be anywhere in the maze
#     3. The directions array will always be in upper case and will be in the format of:
#         N = North, E = East, W = West and S = South. (North is assumed to be the top)

# Good luck, and stay safe!

class Maze
	attr_reader :maze
	
    def initialize(maze)
        @maze = maze
        @current_position = Hash.new
        
    end
    def walk(moves)
        if @current_position == {}
		    maze_height = @maze.length
		    maze_width = @maze[0].length
		    maze_height.times do |x|
			    @maze[x].length.times do |y|
				    if @maze[x][y] == 2
					    @current_position = { x: x, y: y }
				    end
			    end
		    end
        end
		puts @current_position
		moves.length.times do |i|
			#iterate through moves in case statement
			case moves[i]
				when "N"
				@current_position[:x] = @current_position[:x] - 1
				when "S"
				@current_position[:x] = @current_position[:x] + 1
				when "E"
				@current_position[:y] = @current_position[:y] + 1
				when "W"
				@current_position[:y] = @current_position[:y] - 1
			end
			#puts current_position
		#puts @maze[current_position[:x]][current_position[:y]]
			case @maze[@current_position[:x]][@current_position[:y]]
				when 3
				return "Finish"
				when 1
				return "Dead"
			end
		end 
		case @maze[@current_position[:x]][@current_position[:y]]
				when 0
				return "Lost"
		end
    end
end

# maze = Maze.new([
#             [1,1,1,1,1,1,1],
#             [1,0,0,0,0,0,3],
#             [1,0,1,0,1,0,1],
#             [0,0,1,0,0,0,1],
#             [1,0,1,0,1,0,1],
#             [1,0,0,0,0,0,1],
#             [1,2,1,0,1,0,1]
#         ])  
# maze.walk(["N","N","N","N","N","E","E","E","E","E"])
