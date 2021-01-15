# Classes

class Player
  attr_accessor :name
  attr_reader :tag

  def initialize(tag)
    @name = ''
    @tag = tag
  end
end

class Board
  def initialize
    @board_grid = [
      Square.new('1'), Square.new('2'), Square.new('3'),
      Square.new('4'), Square.new('5'), Square.new('6'),
      Square.new('7'), Square.new('8'), Square.new('9')
    ]
  end

  def print_board
    puts "[ #{@board_grid[0]} ] [ #{@board_grid[1]} ] [ #{@board_grid[2]} ]"
    puts "[ #{@board_grid[3]} ] [ #{@board_grid[4]} ] [ #{@board_grid[5]} ]"
    puts "[ #{@board_grid[6]} ] [ #{@board_grid[7]} ] [ #{@board_grid[8]} ]"
  end

  def check_input(input)
    return false if input.to_i.zero?
    return false unless input.to_i.positive? && input.to_i < 10

    check_board(input)
  end

  def check_board(input)
    if @board_grid[input.to_i - 1].to_s == 'X' || @board_grid[input.to_i - 1].to_s == 'O'
      false
    else
      true
    end
  end

  def change_box(input, player)
    @board_grid[input.to_i - 1] = Square.new(player.tag)
  end

  def check_winner(player)
    win_conditions = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

    winner = nil
    win_conditions.map { |boxes| winner = player if create_win_condition(boxes, player.tag) }

    winner
  end

  def check_draw(winner)
    return true if @board_grid.all? { |item| item.char == 'X' or item.char == 'O' } and winner.nil?
  end

  private

  def create_win_condition(boxes, tag)
    return true if [@board_grid[boxes[0]].char, @board_grid[boxes[1]].char, @board_grid[boxes[2]].char].all?(tag)
  end
end

class Square
  attr_reader :char

  def initialize(char = nil)
    @char = char
  end

  def to_s
    @char
  end
end
