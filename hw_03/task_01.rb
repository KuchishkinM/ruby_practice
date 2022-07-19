word = gets.chomp.to_s
if word.upcase[-2] + word.upcase[-1] == 'CS'
  puts 2 ** word.length
else
  puts word.reverse
end