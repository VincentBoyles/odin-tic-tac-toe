require_relative 'players'

class Board
  attr_accessor :cords, :board, :tiles

  def initialize
    @cords = Array.new(3) { Array.new(3, ' ') }
    @tiles = %w[a1 a2 a3 b1 b2 b3 c1 c2 c3]
  end

  def show_board
    @board =
      "
      [#{cords[0][0]}][#{cords[0][1]}][#{cords[0][2]}]
      [#{cords[1][0]}][#{cords[1][1]}][#{cords[1][2]}]
      [#{cords[2][0]}][#{cords[2][1]}][#{cords[2][2]}]
      "
  end

  def human_place_piece(piece)
    input_piece = ''
    until %w[a1 a2 a3 b1 b2 b3 c1 c2 c3].include?(input_piece)
      puts "Choose where to place within these tiles #{@tiles}"
      input_piece = gets.chomp
      coordinates(input_piece, piece)
    end
  end

  def computer_place_piece(piece)
    random = tiles.sample
    coordinates(random, piece)
  end

  def check_winner(piece)
    winning_case =
      [
        [cords[0][0], cords[0][1], cords[0][2]],
        [cords[0][0], cords[1][1], cords[2][2]],
        [cords[0][0], cords[1][0], cords[2][0]],
        [cords[1][0], cords[1][1], cords[1][2]],
        [cords[2][0], cords[1][1], cords[0][2]],
        [cords[2][0], cords[2][1], cords[2][2]],
        [cords[2][1], cords[1][1], cords[0][1]],
        [cords[2][2], cords[1][2], cords[0][2]]
      ]

    winning_case.any? { |arr| arr.all? { |arr| arr == piece } }
  end

  private

  def coordinates(coords, piece)
    case coords
    when 'a1'
      cords[0][0] = piece
      tiles.delete('a1')
    when 'a2'
      cords[0][1] = piece
      tiles.delete('a2')
    when 'a3'
      cords[0][2] = piece
      tiles.delete('a3')
    when 'b1'
      cords[1][0] = piece
      tiles.delete('b1')
    when 'b2'
      cords[1][1] = piece
      tiles.delete('b2')
    when 'b3'
      cords[1][2] = piece
      tiles.delete('b3')
    when 'c1'
      cords[2][0] = piece
      tiles.delete('c1')
    when 'c2'
      cords[2][1] = piece
      tiles.delete('c2')
    when 'c3'
      cords[2][2] = piece
      tiles.delete('c3')
    end
  end
end
