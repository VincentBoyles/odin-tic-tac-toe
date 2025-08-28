class Player
  attr_accessor :name, :piece

  def initialize
    @name = name
    @piece = piece
  end

  def ask_name
    input_choice = ''
    until input_choice != ''
      puts 'Please enter your name: '
      input_choice = gets.chomp
    end
    self.name = input_choice
  end

  def choose_piece
    input_choice = ''
    until %w[X O].include?(input_choice)
      puts 'Please choose between X and O.'
      input_choice = gets.chomp
    end
    self.piece = input_choice
  end
end
