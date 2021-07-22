require_relative 'board.rb'

class Show
  def initialize(board)
    puts "   1     2    3 "
    puts "-----------------"
    puts "A.#{board.board_hash.fetch("A1").state}  | #{board.board_hash.fetch("A2").state} | #{board.board_hash.fetch("A3").state} |" 
    puts "-----------------"
    puts "B.#{board.board_hash.fetch("B1").state}  | #{board.board_hash.fetch("B2").state} | #{board.board_hash.fetch("B3").state} |" 
    puts "-----------------"
    puts "C.#{board.board_hash.fetch("C1").state}  | #{board.board_hash.fetch("C2").state} | #{board.board_hash.fetch("C3").state} |" 
    puts "-----------------"
  end
end