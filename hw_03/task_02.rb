def start
  puts 'Сколько добавить покемонов?'
  gets.chomp.to_i
end

def add_pokemons(count_of_pokemons)
  array = []
  ask_name_and_color_pokemon = 'Напишите имя и цвет покемона'
  (1..count_of_pokemons).each do |i|
    puts ask_name_and_color_pokemon
    pokemon_name = gets.chomp.to_s
    pokemon_color = gets.chomp.to_s
    array.append({ name: pokemon_name, color: pokemon_color })
  end
  array
end

print add_pokemons(start)
