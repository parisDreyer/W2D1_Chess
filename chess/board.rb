require 'byebug'
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
          Piece.new([i, j])
        else
          NullPiece.new([i, j])
        end
      end
    end
  end
  
  def move_piece(start_pos, end_pos)
    if self[start_pos].is_a?(NullPiece)
      raise "No piece in starting position"
    end
    

    moving_piece = self[start_pos]
    
    unless moving_piece.valid_moves.include?(end_pos)
      raise "Invalid move for #{moving_piece}"
    end
    
    replaced_piece = self[end_pos]
    moving_piece.pos = end_pos

    if replaced_piece.is_a?(NullPiece)
      replaced_piece.pos = start_pos
      self[start_pos], self[end_pos] = replaced_piece, moving_piece
    else
      self[start_pos] = NullPiece.new(start_pos)
    end
  end
end

