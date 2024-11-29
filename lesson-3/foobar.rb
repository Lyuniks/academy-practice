def foobar(number)
    print "Введите #{number}: "
    gets.chomp
  end
  
  def calculate_result(a, b)
    if a == 20 || b == 20
      a == 20 ? a : b
    else
      a + b
    end
  end
  
  if __FILE__ == $0
    a = foobar('первое число').to_i
    b = foobar('второе число').to_i
    result = calculate_result(a, b)
    puts result
  end