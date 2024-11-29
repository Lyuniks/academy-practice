def greeting (what)
print "Введите #{what}: "
gets.chomp
end

name = greeting('имя')
surname = greeting('фамилию')
age = greeting('возраст').to_i

if age >= 18
    puts "Привет, #{name} #{surname}. Самое время заняться делом!"
else 
    puts "Привет, #{name} #{surname}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
end