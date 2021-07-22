class Player
  attr_accessor :name, :symbol
  @@symbols = %w(❌ ⭕)

  def initialize(name)
    @name = name
    choose_symbol
  end

  def menu_symbol
    puts "Veuillez choisir un symbole: "
    @@symbols.length.times do |i|
        puts "#{i+1}/ #{@@symbols[i]}"
    end
    print ">"
    check_input_symbol(gets.chomp.to_i)
  end

  def check_input_symbol(input)
    if (1..2).include?(input)
      return input
    else
      puts "Choix impossible... Réessaye!"
      menu_symbol()
    end 
  end

  def choose_symbol
    @@symbols.length > 1 ? @symbol = @@symbols[menu_symbol()-1] : @symbol = @@symbols[0]
    @@symbols.delete(@symbol)
  end
end



