#!/usr/bin/env ruby
name1=''
marker1=''

puts 'Welcome Player 1, please introduce your name:'
name1 = gets.chomp

loop do
  puts 'Please choose your marker: X or O'
  marker1 = gets.chomp.upcase
  break if ['X', 'O'].include?(marker1)
end

puts 'Welcome Player 2, please introduce your name:'
name2 = gets.chomp

marker2 = (marker1 == 'X' ? 'O' : 'X')
puts "You will play with #{marker2}"

current_player = name1
1.upto(9) do
  position = 0
  puts "#{current_player} it\'s your turn. Choose a position"
  loop do
    position = gets.chomp.to_i
    break if (1..9).include?(position)
    puts 'Please choose a position from 1 to 9'
  end
  puts "#{current_player} chose position #{position}"
  current_player = (current_player == name1 ? name2 : name1)
end

players = [name1, name2]
puts "#{players[rand(0..1)]} won the game!"
