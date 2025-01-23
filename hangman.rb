words = ["sees","word", "something", "apple", "watermelon", "grapes"]
chances = 5

words.each do |word|
  to_guess = "_" * word.length
  chances = 5

  puts "Guess the word: #{to_guess}"

  while chances > 0 && to_guess.include?('_')
    puts "\nEnter a character:"
    c = gets.chomp

    if word.include?(c)
      word.chars.each_with_index do |char, index|
        print char, index
        if char == c
          to_guess[index] = c
        end
      end
      puts "Correct guess!"
    else
      chances -= 1
      puts "Wrong guess! Chances left: #{chances}"
    end

    puts "Current word: #{to_guess}"
  end

  if to_guess == word
    puts "Congratulations! You guessed the word: #{word}"
  else
    puts "Game over! The correct word was: #{word}"
  end

  puts "-" * 30  
end