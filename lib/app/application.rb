require_relative 'game.rb'

class Application
  attr_accessor :players
  @@players = []

  def initialize
    start_message()
    create_players(2)
    launch_game()
  end

  def launch_game
    Game.new(@@players)
    play_again()
  end

  def start_message
    star= ("*".colorize(:red) + "*".colorize(:blue))
    r_star = ("*".colorize(:blue) + "*".colorize(:red))
    puts star * 30
    puts r_star * 30
    puts "\n"
    puts ' ' * 15 + 'Welcome To The Hacking Morpions'.colorize(:blue)
    puts "\n"
    puts star * 30
    puts r_star * 30
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
    choice = gets.chomp.colorize(:pink)
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
    star= ("*".colorize(:red) + "*".colorize(:blue))
    r_star = ("*".colorize(:blue) + "*".colorize(:red))

    puts "\n\n" + star * 30
    puts r_star * 30
    puts " " * 15 + "Merci d'avoir jouer !".colorize(:blue)
    puts " " * 22 + "#{@@players[0].name}:" + "#{@@players[0].victory}".colorize(:green)
    puts " " * 22 + "#{@@players[1].name}:" + "#{@@players[1].victory}".colorize(:green)
    puts star * 30
    puts r_star * 30 + "\n\n"
  end
end