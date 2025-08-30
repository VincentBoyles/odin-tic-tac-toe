require_relative 'players'

class Board
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :board, :tiles

  def initialize
    @a1 = ' '
    @a2 = ' '
    @a3 = ' '
    @b1 = ' '
    @b2 = ' '
    @b3 = ' '
    @c1 = ' '
    @c2 = ' '
    @c3 = ' '
    @tiles = %w[a1 a2 a3 b1 b2 b3 c1 c2 c3]
  end

  def show_board
    @board =
      "
      [#{a1}][#{a2}][#{a3}]
      [#{b1}][#{b2}][#{b3}]
      [#{c1}][#{c2}][#{c3}]
      "
  end

  def place_piece(piece)
    input_piece = ''
    until %w[a1 a2 a3 b1 b2 b3 c1 c2 c3].include?(input_piece)
      puts "Choose where to place within these tiles #{@tiles}"
      input_piece = gets.chomp
      case input_piece
      when 'a1'
        self.a1 = piece
        tiles.delete('a1')
      when 'a2'
        self.a2 = piece
        tiles.delete('a2')
      when 'a3'
        self.a3 = piece
        tiles.delete('a3')
      when 'b1'
        self.b1 = piece
        tiles.delete('b1')
      when 'b2'
        self.b2 = piece
        tiles.delete('b2')
      when 'b3'
        self.b3 = piece
        tiles.delete('b3')
      when 'c1'
        self.c1 = piece
        tiles.delete('c1')
      when 'c2'
        self.c2 = piece
        tiles.delete('c2')
      when 'c3'
        self.c3 = piece
        tiles.delete('c3')
      end
    end
  end

  def computer_place_piece(piece)
    random = tiles.sample
    case random
    when 'a1'
      self.a1 = piece
      tiles.delete('a1')
    when 'a2'
      self.a2 = piece
      tiles.delete('a2')
    when 'a3'
      self.a3 = piece
      tiles.delete('a3')
    when 'b1'
      self.b1 = piece
      tiles.delete('b1')
    when 'b2'
      self.b2 = piece
      tiles.delete('b2')
    when 'b3'
      self.b3 = piece
      tiles.delete('b3')
    when 'c1'
      self.c1 = piece
      tiles.delete('c1')
    when 'c2'
      self.c2 = piece
      tiles.delete('c2')
    when 'c3'
      self.c3 = piece
      tiles.delete('c3')
    end
  end

  def check_winner(piece)
    winning_case = [[a1, a2, a3], [a1, b2, c3], [a1, b1, c1], [b1, b2, b3],
                    [c1, b2, a3], [c1, c2, c3], [c2, b2, a2], [c3, b3, a3]]

    winning_case.any? { |arr| arr.all? { |arr| arr == piece } }
  end
end
