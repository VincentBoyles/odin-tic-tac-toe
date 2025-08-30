require_relative 'players'
require_relative 'board'

class Game
  attr_accessor :player1, :player2

  def initialize
    @player1 = ''
    @player2 = ''
  end

  def ask_name
    input_choice = ''
    until input_choice != ''
      puts 'Please enter your name: '
      input_choice = gets.chomp
    end
    input_choice
  end

  def ask_piece
    input_choice = ''
    until %w[X O].include?(input_choice)
      puts 'Please choose between X and O.'
      input_choice = gets.chomp
    end
    input_choice
  end

  def register_players
    player1 = HumanPlayer.new(ask_name, ask_piece)
    player2 = ComputerPlayer.new(player1.piece == 'X' ? 'O' : 'X')
    self.player1 = player1
    self.player2 = player2
  end

  def game_start
    puts 'Welcome to Tic-Tac-Toe!'
    register_players
    gameboard = Board.new
    loop do
      gameboard.place_piece(player1.piece)
      puts "#{player1.name}'s turn" + gameboard.show_board
      break if gameboard.check_winner(player1.piece)

      gameboard.computer_place_piece(player2.piece)
      puts "#{player2.name}'s turn" + gameboard.show_board
      break if gameboard.check_winner(player2.piece)

      # gameboard.check_winner(player1.piece) || gameboard.check_winner(player2.piece) || gameboard.tiles.empty?
    end
    puts "#{player1.name} wins!" if gameboard.check_winner(player1.piece)
    puts "#{player2.name} wins!" if gameboard.check_winner(player2.piece)
  end
end
