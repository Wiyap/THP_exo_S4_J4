require 'bundler'
Bundler.require


require_relative 'player.rb'
require_relative 'show.rb'
require_relative 'board.rb'

class Game
  attr_accessor :round, :morpion, :players
  
  def initialize(players)
    @players = players
    @morpion = Board.new
    winner = turn(@players)
    Show.new(@morpion)
    winner == "draw" ? draw_message() :  winner_message(winner) #winner ocntiens toujours "draw" OU un l'object de la classe player qui a gagné la partie
  end
  
  def turn(players)
    players.each do |player|
      system('clear')
      puts "#{player.name} A votre tour"
      menu(player)
      #break de fin de partie
      return "draw" if @morpion.draw?()
      return player if win?()
    end
    turn(players)
  end
  # 1, 2, 4, 7, 5, 9, 8, 6, 3 <= Draw


  def check_rows
    b_hash = @morpion.board_hash
    ((b_hash["A1"].state == b_hash["A2"].state && b_hash["A2"].state == b_hash["A3"].state) && b_hash["A1"].state != '  ') ||
    ((b_hash["B1"].state == b_hash["B2"].state && b_hash["B2"].state == b_hash["B3"].state) && b_hash["B1"].state != '  ') ||
    ((b_hash["C1"].state == b_hash["C2"].state && b_hash["C2"].state == b_hash["C3"].state) && b_hash["C1"].state != '  ')
  end

  def check_columns
    b_hash = @morpion.board_hash
    ((b_hash["A1"].state == b_hash["B1"].state && b_hash["B1"].state == b_hash["C1"].state) && b_hash["A1"].state != '  ')||
    ((b_hash["A2"].state == b_hash["B2"].state && b_hash["B2"].state == b_hash["C2"].state) && b_hash["A2"].state != '  ')||
    ((b_hash["A3"].state == b_hash["B3"].state && b_hash["B3"].state == b_hash["C3"].state) && b_hash["A3"].state != '  ') 
  end

  def check_diagonals
    b_hash = @morpion.board_hash
    ((b_hash["A1"].state == b_hash["B2"].state && b_hash["A1"].state == b_hash["C3"].state) ||
    (b_hash["C1"].state == b_hash["B2"].state && b_hash["C1"].state == b_hash["A3"].state)) && 
    (b_hash["B2"].state != '  ') #B2 est necessaire pour valider une daigonale, donc si elle est vide on sait que le diag ne peut pas etre complete
  end

  def win?
    check_rows || check_columns || check_diagonals
  end

  def menu(player)
    Show.new(@morpion)
    menu_action(menu_choice(), player)
  end
  
  #. Board_Case = > ajouter une clé correspond au numéro de la case ( 1- 9 )
  #. Utiliser ce numero pour faire le lien entre l'input utilisateur (choice) et la position de la case
  def menu_action(choice, player) #1 , 2 ,3
    case_picked = choice
    case case_picked
    when 1
      case_picked = @morpion.board_hash["A1"]
    when 2
      case_picked = @morpion.board_hash["A2"]
    when 3
      case_picked = @morpion.board_hash["A3"]
    when 4
      case_picked = @morpion.board_hash["B1"]
    when 5
      case_picked = @morpion.board_hash["B2"]
    when 6
      case_picked = @morpion.board_hash["B3"]
    when 7
      case_picked = @morpion.board_hash["C1"]
    when 8
      case_picked = @morpion.board_hash["C2"]
    when 9
      case_picked = @morpion.board_hash["C3"]   
    end

    if @morpion.is_empty?(case_picked)
      @morpion.change_state(player, case_picked)
    else
      puts "Désolé la case est prise..."
      menu(player)
    end
  end

  def menu_choice
    puts "Choisis une case:"
    b_hash = @morpion.board_hash
    i = 1
    b_hash.each do |k,_|
      puts "#{i}\ #{k}" #affiche les "noms" des cases (position)
      i +=1
    end
    print ">"
    choice = gets.chomp.to_i #traite le choix de l'utilisateur
    if (1..9).include?(choice)
      return choice
    else
      puts "Choix impossible... Réessaye!"
      menu_choice()
    end    
  end

  def winner_message(winner)
    puts "#{winner.name} a gagné!"
  end

  def draw_message
    puts "Egalité !! Vous êtes tous les deux nuls !"
  end
end