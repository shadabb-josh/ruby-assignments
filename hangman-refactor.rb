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
    @chances = 5
    @level = 1
  end

  def start
    words.each do |word|
      to_guess = "_" * word.length
      game_over = false

      GameUtils.display_level(level)
      puts "Guess the word: #{to_guess}"

      while chances > 0 && to_guess.include?('_')
        puts "\nEnter a character:"
        character = gets.chomp.strip.downcase # Removing leading/trailing spaces and downcasing character

        if word.include?(character)
          word.chars.each_with_index do |char, index|
            to_guess[index] = char if char == character
          end
          puts "Correct guess!"
        else
          self.chances -= 1
          GameUtils.display_chances(chances)
          puts "Wrong guess!"
        end

        GameUtils.display_current_word(to_guess)
      end

      if to_guess == word
        puts "Congratulations! You guessed the word: #{word}"
        self.level += 1
      else
        puts "Game over! The correct word was: #{word}"
        self.level -= 1 if level > 1
        game_over = true
      end

      break if game_over

      puts "-" * 30
    end
  end
end

game = WordGuessingGame.new(["word", "something", "apple", "watermelon", "grapes"])
game.start
