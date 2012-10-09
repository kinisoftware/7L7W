numberToGuess = rand(10)

puts 'Guess the number! (0 to 9)'
playerNumber = gets.to_i

until playerNumber == numberToGuess
	if playerNumber < numberToGuess then
		puts 'Nop, my number is higher :)'
	elsif playerNumber > numberToGuess
		puts 'Nop, my number is lower :)'
	end
	puts 'Try again!'
	playerNumber = gets.to_i
end

puts 'Oh yeah madafacka!'