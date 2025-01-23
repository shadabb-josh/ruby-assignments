module GameUtils
  def self.display_level(level)
    puts "LEVEL #{level}"
  end

  def self.display_current_word(to_guess)
    puts "Current word: #{to_guess}"
  end

  def self.display_chances(chances)
    puts "Chances left: #{chances}"
  end
end

class WordGuessingGame
  attr_accessor :words, :chances, :level

  def initialize(words)
    @words = words
    @level = 1
  end

  def start
    words.each do |word|
      to_guess = "_" * word.length
      @chances = 5

      GameUtils.display_level(@level)
      puts "Guess the word: #{to_guess}"

      while @chances > 0 && to_guess.include?('_')
        puts "\nEnter a character:"
        c = gets.chomp

        if c.length == 1 && !c.empty?
          if word.include?(c)
            word.chars.each_with_index do |char, index|
              if char == c
                to_guess[index] = c
              end
            end
            puts "Correct guess!"
          else
            @chances -= 1
            puts "Wrong guess!"
          end
          GameUtils.display_chances(@chances)
          GameUtils.display_current_word(to_guess)
        else
          puts "Please enter one character only."
        end
      end

      if to_guess == word
        puts "Congratulations! You guessed the word: #{word}"
        @level += 1
      else
        puts "Game over! The correct word was: #{word}"
        @level -= 1 if @level > 1
      end

      puts "-" * 30
    end
  end
end

# Initialize and start the game
game = WordGuessingGame.new(["word", "something", "apple", "watermelon", "grapes"])
game.start
