def start
  puts "Сколько добавить покемонов?"
  count_pokemons = gets.chomp.to_i
  return count_pokemons
end

def add_pokenoms(count_pokemons)
  array = []
  ask_name_and_color_pokemon = "Напишите имя и цвет покемона"
  for i in (1..count_pokemons)
    puts ask_name_and_color_pokemon
    pokemon_name = gets.chomp.to_s
    pokemon_color = gets.chomp.to_s
    array.append({ name: pokemon_color, color: pokemon_name })
  end
  return array
end

print add_pokenoms(start)