puts "Добро пожаловать в игру 'Угадай число!'"
print "Как тебя зовут?"
input = gets
name = input.chomp
puts "Привет, #{name}!"

puts "Я загадал случайное число от 1 до 100. "
puts "Сможешь отгадать его? "
target = rand(100) + 1

num_guesses = 0
guessed_it = false

while num_guesses < 10 && guessed_it == false

    puts "У вас осталось #{10 - num_guesses} попыток."
    print "Назови число. "
    guess = gets.to_i

    num_guesses += 1

    if guess < target
        puts "Упс. Надо больше"
    elsif guess > target
        puts "надо меньше"
    elsif guess == target
        puts "Поздравляю вы угадали число за #{num_guesses} попыток!"
        guessed_it = true
    end

end

if not guessed_it
    puts "К сожалению вы не смогли угадать число. Этим числом было #{target}"
end
