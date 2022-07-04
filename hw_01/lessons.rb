sum = 0
loop do
  input = gets.to_i
  next if input == 0
  break if input == -1

  sum += input
end
