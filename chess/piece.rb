class Piece
  COLORS = { black: 'black', white: 'white' }
  
  def initialize(position)
    @color = nil
    @position = position
  end
  
  def to_s
    self.class.to_s
  end
  
  def empty?
    
  end
  
  def valid_moves
    possible_moves = Array.new(8) { Array.new(8) }
    return_value = []
    
    possible_moves.each.with_index do |row, i|
      row.each.with_index do |pos, j|
        return_value << [i, j]
      end 
    end
    
    return_value
  end
  
  def pos=(val)
    @position = val
  end
  
  def symbol
    
  end
  
  def move_into_check?(end_pos)
    
  end
  
  def inspect
    [to_s, @position]
  end
end

class NullPiece < Piece
  def initialize(position)
    @color = nil
    @position = position
  end
  
  def to_s
    self.class.to_s
  end
  
  def empty?
    
  end
  
  def valid_moves
  
  end
  
  
  def symbol
    
  end
  
  def move_into_check?(end_pos)
    
  end
end