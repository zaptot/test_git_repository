# 1. создаем словарь
# 2. просим пользователя ввести слово для перевода
# 2.1 проверить, что слово существует в словаре
# 3. выводим переведенное слово

dictionary = {
  'собака' => 'dog',
  'книга' => 'book'
}

puts 'Введите слово, которое хотите перевести:'
input_word = gets.chomp.downcase

if dictionary[input_word]
  puts "Ваш перевод: #{dictionary[input_word]}"
else
  puts 'Слово не добавлено в словарь'
end