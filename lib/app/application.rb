require_relative 'game.rb'

class Application
  attr_accessor :players
  @@players = []

  def initialize
    create_players(2)
    launch_game()
  end

  def launch_game
    Game.new(@@players)
    play_again()
  end

  def self.players
    return @@players    
  end

  def if_name_exist?(name)
    #Si le tableau est vide, pas besoin de vérifier les noms dedans
    return false if @@players.empty? 
    @@players.each do |player|
      if player.name == name 
        puts "Ce nom existe déjà, il faut en choisir un autre."
        return true
      else
        return false
      end
    end
  end

  def create_one_player
    puts "Quel est ton nom?"
    print ">"
    choice = gets.chomp
    if_name_exist?(choice) ? create_one_player() : @@players << Player.new(choice)
  end    

  def create_players(numb)
    numb.times do 
      create_one_player()
    end
  end


  def play_again
    puts "Voulez vous-rejouez? (O/N)"
    print ">"
    rematch = gets.chomp
    if rematch.downcase != 'o' && rematch.downcase != 'n' 
      play_again()
    else
      rematch.downcase == 'o' ? launch_game() : endgame()
    end
  end

  def endgame
    puts "affichez les scores"

  end
end