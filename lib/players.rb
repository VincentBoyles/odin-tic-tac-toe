class Players
  attr_accessor :name, :piece

  def initialize(name, piece)
    @name = name
    @piece = piece
    puts "#{name} chooses #{piece}"
  end
end

class HumanPlayer < Players
  def initialize(name, piece)
    super(name, piece)
  end
end

class ComputerPlayer < Players
  def initialize(piece)
    super(name = 'Computer', piece)
  end
end
