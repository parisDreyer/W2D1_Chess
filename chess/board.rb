require_relative 'piece'

class Board
  attr_accessor :grid
  def initialize
    @grid = Array.new(8) { Array.new(8) }
    populate
  end
  
  def [](pos)
    row, col = pos
    @grid[row][col]
  end
  
  def []=(pos, piece)
    row, col = pos
    @grid[row][col] = piece
  end
  
  def populate
    @grid.map!.with_index do |row, i|
      row.map!.with_index do |space, j|
        if [0,1,6,7].include?(i)
          Piece.new([i, j], self)
        else
          NullPiece.new([i, j], self)
        end
      end
    end
  end
  
  def move_piece(start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      raise "No piece in starting position"
    end
    
    unless self[start_pos].valid_moves.include?(end_pos)
      raise "Invalid move for #{self[start_pos]}"
    end
    rescue
      retry
  end
end

