BALANCE_PATH = 'hw_04/balance.txt'

def bank_menu
  puts 'Выберите дальнейшее действие:'
  puts 'Чтобы внести деньги введите - D'
  puts 'Чтобы вывести деньги введите - W'
  puts 'Чтобы проверить баланс введите - B'
  puts 'Чтобы выйти введите - Q'
  choice = gets.chomp.to_s.upcase
  case choice
  when 'B'
    balance(balance_open)
  when 'Q'
    quit
  when 'W'
    withdraw(balance_open)
  when 'D'
    deposit(balance_open)
  else
    bank_menu
  end
end

def balance_open
  file = File.open(BALANCE_PATH)
  file_data = file.read
  file.close
  file_data.to_f
end

def balance(balance_open)
  puts "Ваш баланс: #{balance_open}"
  bank_menu
end

def deposit(balance_open)
  puts 'Введите сумму:'
  sum = gets.chomp.to_f
  if sum > 0
    new_balance = balance_open + sum
    File.open(BALANCE_PATH, 'w') { |f| f.write new_balance }
  else
    puts 'Введите сумму больше 0'
    deposit(balance_open)
  end
  balance(balance_open)
end

def withdraw(balance_open)
  puts 'Введите сумму:'
  sum = gets.chomp.to_f
  if sum <= balance_open
    new_balance = balance_open - sum
    File.open(BALANCE_PATH, 'w') { |f| f.write new_balance }
  else
    puts 'На Вашем балансе недостаточно средст'
    withdraw(balance_open)
  end
  balance(balance_open)
end

def quit
  abort
end

balance(balance_open)