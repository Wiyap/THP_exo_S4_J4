require_relative 'board_case.rb'

class Board
  attr_accessor :board_hash, :round

  def initialize
    @round = 0
    @board_hash = Hash.new
    alpha= %w(A B C)
    alpha.each do |n|
      3.times do |i| # on crée un array de hash, chacun correspond a une case du board
        @board_hash["#{n}#{i+1}"] = CaseBoard.new("#{n}#{i+1}")
      end
    end
  end
  
  def change_state(player, case_picked)
    case_picked.state = player.symbol 
    @round += 1
  end

  def is_empty?(case_picked)
    case_picked.state == '  '
  end

  def draw?
    @round == 9
  end

end