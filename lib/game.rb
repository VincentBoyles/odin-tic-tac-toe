require_relative 'player'

class Game
  attr_accessor :a1, :a2, :a3, :b1, :b2, :b3, :c1, :c2, :c3, :board, :tiles, :players

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
    @board = ''
    @tiles = %w[a1 a2 a3 b1 b2 b3 c1 c2 c3]
    @players = []
  end

  def generate_board
    self.board = "
            [#{a1}][#{a2}][#{a3}]
            [#{b1}][#{b2}][#{b3}]
            [#{c1}][#{c2}][#{c3}]
            "
  end

  def check_winner(player)
    case player.choice = 'O'
    when [a1, a2, a3].all? { |x| x == 'O' }
      true
    when [a1, b2, c3].all? { |x| x == 'O' }
      true
    when [a1, b1, c1].all? { |x| x == 'O' }
      true
    when [b1, b2, b3].all? { |x| x == 'O' }
      true
    when [c1, b2, a3].all? { |x| x == 'O' }
      true
    when [c1, c2, c3].all? { |x| x == 'O' }
      true
    when [c2, b2, a2].all? { |x| x == 'O' }
      true
    when [c3, b3, a3].all? { |x| x == 'O' }
      true
    end

    case player.choice = 'X'
    when [a1, a2, a3].all? { |x| x == 'O' }
      true
    when [a1, b2, c3].all? { |x| x == 'O' }
      true
    when [a1, b1, c1].all? { |x| x == 'O' }
      true
    when [b1, b2, b3].all? { |x| x == 'O' }
      true
    when [c1, b2, a3].all? { |x| x == 'O' }
      true
    when [c1, c2, c3].all? { |x| x == 'O' }
      true
    when [c2, b2, a2].all? { |x| x == 'O' }
      true
    when [c3, b3, a3].all? { |x| x == 'O' }
      true
    end
  end

  def place_piece
    input_piece = ''
    until input_piece != ''
      puts "Choose where to place within these tiles #{tiles}"
      input_piece = gets.chomp
      case input_piece
      when 'a1'
        self.a1 = 'X'
        tiles.delete('a1')
      when 'a2'
        self.a2 = 'X'
        tiles.delete('a2')
      when 'a3'
        self.a3 = 'X'
        tiles.delete('a3')
      when 'b1'
        self.b1 = 'X'
        tiles.delete('b1')
      when 'b2'
        self.b2 = 'X'
        tiles.delete('b2')
      when 'b3'
        self.b3 = 'X'
        tiles.delete('b3')
      when 'c1'
        self.c1 = 'X'
        tiles.delete('c1')
      when 'c2'
        self.c2 = 'X'
        tiles.delete('c2')
      when 'c3'
        self.c3 = 'X'
        tiles.delete('c3')
      end
    end
  end

  def game_start
    puts 'Welome to Tic-Tac-Toe!'
    player1 = Player.new
    player1.ask_name
    puts "Welcome to the game #{player1.name}!"
    player1.choose_piece
    puts "#{player1.name} chose #{player1.piece}"
    players.push(player1)
    place_piece
    puts generate_board
  end
end

game = Game.new
game.game_start
