#!/usr/bin/env ruby
class Player
  attr_accessor :name, :movement

  def initialize(name, movement)
    @name = name
    @movement = movement
  end
end
puts '-----------------------'
puts '    ♥          ♥'
puts ' ♥     ♥   ♥       ♥'
puts '  ♥      ♥        ♥'
puts '   ♥  Welcome to ♥'
puts '    ♥    Tic    ♥'
puts '      ♥  Tak  ♥'
puts '        ♥ 2 ♥'
puts '          ♥'
puts '----------------------'

puts 'Player1, ENTER YOUR NAME: '
player1 = Player.new
player1.name = gets.chomp

puts 'Player2, ENTER YOUR NAME: '
player2 = Player.new
player2.name = gets.chomp

puts 'Here is your board'
puts ' #1 | #2 | #3 '
puts '--------------'
puts ' #4 | #5 | #6 '
puts '--------------'
puts ' #7 | #8 | #9 '
puts 'Are you ready to play?'
puts "Enter the number 1 through 9 for your first turn, #{player1.name}"
user_input = gets.chomp
puts "You selected #{user_input}, so your X is now on the board"
puts 'Ta da - Your board is displayed here'
puts ' #1 | #2 | #3 '
puts '--------------'
puts ' #4 | #5 | #6 '
puts '--------------'
puts ' #7 | #8 | #9 '
puts "#{player2.name}, please select a number from 1 through 9 for your turn. Be sure to select a different number"
user2_input = gets.chomp
puts "Way to go, you selected #{user2_input}. Your O is now on the board"
puts 'Ta da - Your board is displayed here'
puts ' #1 | #2 | #3 '
puts '--------------'
puts ' #4 | #5 | #6 '
puts '--------------'
puts ' #7 | #8 | #9 '
puts 'Since this is just a demo, we will pause here until we can get some real game logic going.'
