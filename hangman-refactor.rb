words = ["word", "something", "apple", "watermelon", "grapes"]
chances = 5
level = 1

words.each do |word|
  to_guess = "_" * word.length
  chances = 5
  puts "LEVEL #{level}"
  puts "Guess the word: #{to_guess}"

  while chances > 0 && to_guess.include?('_')
    puts "\nEnter a character:"
    c = gets.chomp

    if c.length == 1 and c.length > 0
      if word.include?(c)
        index = word.index(c)
        to_guess[index] = c
        puts "Correct guess!"
      else
        chances -= 1
        puts "Wrong guess! Chances left: #{chances}"
      end
        puts "Current word: #{to_guess}"
    else
      puts "please enter one character only"
    end
  
  end

  if to_guess == word
    puts "Congratulations! You guessed the word: #{word}"
    level += 1
  else
    puts "Game over! The correct word was: #{word}"
    level -= 1 if level > 1
  end
  
  puts "-" * 30 
end