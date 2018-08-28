class Piece
  COLORS = { black: 'black', white: 'white' }
  
  def initialize(position, board)
    @color = nil
    @position = position
    @board = board
  end
  
  def to_s
    self.class.to_s
  end
  
  def empty?
    
  end
  
  def valid_moves
    
  end
  
  def pos=(val)
    
  end
  
  def symbol
    
  end
  
  def move_into_check?(end_pos)
    
  end
end

class NullPiece < Piece
  def initialize(position, board)
    @color = nil
    @position = position
    @board = board
  end
  
  def to_s
    self.class.to_s
  end
  
  def empty?
    
  end
  
  def valid_moves
  
  end
  
  def pos=(val)
    
  end
  
  def symbol
    
  end
  
  def move_into_check?(end_pos)
    
  end
end