class Game
  def play
    file = 'words.txt'
    dictionary = []
    current_word = []
    comp = []


    File.readlines(file).each do |line|
      newline = line.chop
      dictionary.push(newline)
    end

    puts 'Press 1 for Computer and 0 player to go first'
    puts '====================================================================='
    options = gets.chomp

    if options == '1'
      puts 'You Loose Boy! make sure you always start'
      puts '=============Try AGAIN==================='
    elsif options == '0'
      i = 0
      count = 0

      while i < dictionary.length
        puts 'play enter a letter'
        puts '================================================================='
        char = gets.chomp
        current_word.push(char)
        readable = current_word.join
        p readable
        # p i
        # p count

        if dictionary.include?(readable)
          puts 'You Loose Boy! make sure you always start'
          puts "#{readable} is a complete english word"
          puts '=============Try AGAIN==================='
          i = 100000000
        elsif dictionary.each do |w|
            if w[0].include?(readable)
              comp.push(w)
            end
          end
          pick = comp.sample
          current_word.push(pick[readable.length])
          p pick[readable.length]
          p current_word
        elsif pick[readable.length] == nil
          puts 'You Loose Boy! make sure you always start'
          puts "#{current_word.join} is a not english word"
          puts '=============Try AGAIN==================='
        end
        i += 1
        count += 1
      end
    end
  end
end

game = Game.new
game.play
