# 1. задаем диапазон чисел, с клавы
# 1.1 проверка диапазона на правильность
# 2. генерируем число
# 3. просим ввести значение
# 3.1 прверка: попало ли число в диапазон
# 4. угадал/не угадал
# 4.1 делаем несколько попыток (7 раз)
# 4.2 делаем подсказки
COUNT_OF_ROUNDS = 7

puts 'Введите нижнюю границу'
min = gets.to_i # '123'.to_i
puts 'Введите верхнюю границу'
max = gets.to_i

if min > max
  puts 'Вы ввели неверные границы'
else
  random_number = rand(min..max)  

  COUNT_OF_ROUNDS.times do |try_number|
    puts 'Угадайте загаданное число:'
    users_guess = gets.to_i
    if users_guess < min || users_guess > max
      puts 'Введенное число не попадает в диапозон'
    elsif users_guess == random_number
      puts 'Вы победили'
      break
    elsif try_number == COUNT_OF_ROUNDS - 1
      puts 'Вы проиграли'
    elsif users_guess < random_number
      puts 'Ваше число меньше загаданного'
    elsif users_guess > random_number
      puts 'Ваше число больше загаданного'
    end
  end
end