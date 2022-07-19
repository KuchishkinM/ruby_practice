def word_check(word)
  if word.upcase[-2] + word.upcase[-1] == 'CS'
    return 2 ** word.length
  else
    return word.reverse
  end
end

puts word_check (gets.chomp.to_s)