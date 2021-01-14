#!/usr/bin/env ruby
puts 'Welcome to the Game of Tic Tac Toe'
puts 'Here is your board'
puts ' #1 | #2 | #3 '
puts '--------------'
puts ' #4 | #5 | #6 '
puts '--------------'
puts ' #7 | #8 | #9 '
puts 'Are you ready to play?'
puts 'Enter the number 1 through 9 for your first turn'
user_input = gets.chomp
puts "You selected #{user_input}, so your X is now on the board"
puts 'Ta da - Your board is displayed here'
puts ' #1 | #2 | #3 '
puts '--------------'
puts ' #4 | #5 | #6 '
puts '--------------'
puts ' #7 | #8 | #9 '
puts 'Player 2, please select a number from 1 through 9 for your turn. Be sure to select a different number'
user2_input = gets.chomp
puts "Way to go, you selected #{user2_input}. Your O is now on the board"
puts 'Ta da - Your board is displayed here'
puts ' #1 | #2 | #3 '
puts '--------------'
puts ' #4 | #5 | #6 '
puts '--------------'
puts ' #7 | #8 | #9 '
puts 'Since this is just a demo, we will pause here until we can get some real game logic going.'
