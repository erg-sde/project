play_again = true

while play_again == true
  the_number = 1 + rand(100)
  guesses = 0
  current_guess = 0
  while current_guess != the_number do
    guesses = guesses + 1
    if guesses == 1
      puts "I'm thinking of a number between 1 and 100, can you guess what it is?"
    else
      puts"Guess again?"
    end

    current_guess = gets.chomp.to_i

    if current_guess == 0
      puts "Try entering a number between 1 and 100"
    elsif current_guess < the_number
      puts "The correct answer is higher!"
    elsif current_guess > the_number
      puts "The correct answer is lower!"
    elsif current_guess == the_number
      puts "Congratulations, #{current_guess} was correct!"
      puts "You got it in #{guesses} guesses!"
      puts "Would you like to play again?"
      answer = gets.chomp
      unless answer == "yes" || answer == "y"
          play_again = false
      end
    end
  end
end
puts "Thanks for playing! Goodbye!"
