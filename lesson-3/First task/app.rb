def get_string(word)
    print "Введите #{word}: "
    gets.chomp
  end
  
  def word_result(string)
    a = string.length - 2
    b = string.length - 1
    if (string[a] == "c" || string[a] == "C") && (string[b] == "s" || string[b] == "S")
      return 2 ** string.length
    else
      return string.reverse
    end
  end
  
  if __FILE__ == $0
    string = get_string('слово')
    result = word_result(string)
    puts result
  end