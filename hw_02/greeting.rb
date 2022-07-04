def greeting
  name = gets.chomp
  last_name = gets.chomp
  age = gets.to_i
  if age < 18
    "Привет, #{name} #{last_name}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано."
  else
    "Привет, #{name} #{last_name}. Самое время заняться делом!"
  end
end
greeting
