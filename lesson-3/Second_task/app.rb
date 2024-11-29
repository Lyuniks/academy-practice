def get_string
  print "Введите количество покемонов: "
  n = gets.chomp.to_i  
  pokemons_result(n)
end

def pokemons_result(n)
  array = []

  n.times do |i|
    puts "Введите имя для #{i + 1} покемона: "
    name = gets.chomp
    puts "Введите цвет для #{i + 1} покемона: "
    color = gets.chomp  
     array << { name: name, color: color }
  end
  puts array.inspect
  array
end

get_string