require_relative 'board.rb'

class Show
  def initialize(board)
    puts "   1     2    3 ".red
    puts "-----------------".blue
    puts "A.".red + " #{board.board_hash.fetch("A1").state} " + "|".blue + " #{board.board_hash.fetch("A2").state} " + "|".blue + " #{board.board_hash.fetch("A3").state} " + "|".blue
    puts "-----------------".blue
    puts "B.".red + " #{board.board_hash.fetch("B1").state} " + "|".blue + " #{board.board_hash.fetch("B2").state} " + "|".blue + " #{board.board_hash.fetch("B3").state} " + "|".blue 
    puts "-----------------".blue
    puts "C.".red + " #{board.board_hash.fetch("C1").state} " + "|".blue + " #{board.board_hash.fetch("C2").state} " + "|".blue + " #{board.board_hash.fetch("C3").state} " + "|".blue
    puts "-----------------".blue
  end
end