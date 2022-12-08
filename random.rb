# min, max => rand(min, max)

while true
  puts 'Введите нижнюю границу'
  min = gets.to_i # '123'.to_i
  puts 'Введите верхнюю границу'
  max = gets.to_i

  if min > max
    puts 'Вы ввели неверные границы'
  else
    random_number = rand(min..max)  
    puts 'Ваше число равно:'
    puts random_number
  end
end