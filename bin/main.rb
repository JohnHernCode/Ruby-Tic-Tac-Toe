#!/usr/bin/env ruby

require_relative '../lib/logic'

# Instantiate the Player class
player1 = Player.new('X')
player2 = Player.new('O')
running = true

while running

  # Welcome
  puts '-----------------------'
  puts '  ♥  ♥        ♥  ♥'
  puts ' ♥     ♥   ♥       ♥'
  puts '  ♥      ♥        ♥'
  puts '   ♥  Welcome to ♥'
  puts '    ♥  Tic Tac  ♥'
  puts '      ♥  Toe  ♥'
  puts '        ♥   ♥'
  puts '          ♥'
  puts '----------------------'
  puts 'X will be player one, what is your name?'
  player1.name = gets.chomp
  puts "Hello #{player1.name}, you are now the X"
  puts 'O will be player two, what is your name? (Please insert a nickname)'
  player2.name = gets.chomp
  puts "Hello #{player2.name}, you are now the O"
  puts ' --------------------------------------------------------------- '
  puts
  puts
  puts "Ready to play #{player1.name} and #{player2.name}? Let's go!"

  # Start the game loop
  board = Board.new
  winner = nil
  turn = true
  message = ''

  while winner.nil?
    system 'clear'
    puts message
    puts
    message = ''
    break if board.check_draw(winner)

    current_player = turn ? player1 : player2

    puts "It is your turn #{current_player.name}"
    puts

    board.print_board

    puts "#{current_player.name} all you have to do is pick a box from above."
    puts
    input = gets.chomp
    if board.check_input(input)
      board.change_box(input, current_player)
      turn = !turn
    else
      message = "Yikes! Did you pick something you weren't supposed to? We will try again."
    end

    winner = board.check_winner(current_player)
  end

  # Results!
  puts ' The Results are in! '
  puts

  if winner
    puts board.print_board
    puts
    puts "Congratulations! #{winner.name} you are the winner!"
    puts 'For those who did not win, thanks for playing and try against the champion again.'
  end

  puts 'DRAW' if winner.nil?

  puts "Do you want to play again? Type 'n' to exit"
  break if gets.chomp.include?('n')
end
