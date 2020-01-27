
def who_won(user_choice, computer_choice)
  if user_choice == computer_choice
    return 0
  end

  win_condition =
      (user_choice == 0 && computer_choice == 1) ||
      (user_choice == 1 && computer_choice == 2) ||
      (user_choice == 2 && computer_choice == 0)
  if win_condition
    return 1
  end
  return 2
end

variants = %w[камень ножницы бумага]

variants.each_with_index do | variant, index|
  puts "#{index} - #{variant}"
end

user_choice = gets.to_i

#Выбрать произвольный вариант за компьютер
computer_choice = rand(variants.size)

# Вывести, кто что выбрал
user_text = variants[user_choice]
puts "Вы выбрали #{user_text}"

computer_text = variants[computer_choice]
puts "Компьютер выбрал #{computer_text}"

game_result = who_won(user_choice, computer_choice)

case game_result
when 0 then puts "Ничья"
when 1 then puts "Вы выграли!"
else
  puts "Компьютер выграл!"
end

