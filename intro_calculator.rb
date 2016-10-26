operation = "+"
until operation == "exit".upcase

  puts "RB Calculator"
  puts "The first number"
  opt1 = gets.chomp.to_f
  puts "Type your second number"
  opt2 = gets.chomp.to_f

  puts "Type your operating (sum, rest, mult, div, pow)"
  operation = gets.chomp
  puts "la operacion es #{opt1} #{operation} #{opt2}"
  puts opt1.class.name
  puts opt2.class.name

  case operation
  when "+", "sum"
      puts "La suma es #{opt1 + opt2}"
    when "-", "rest"
      puts "La resta es #{opt1 - opt2}"
    when "*", "mult"
      puts "La multiplicacion es #{opt1 * opt2}"
    when "/", "div"
      puts "La division es #{opt1 / opt2}"
    when "**", "pow"
      puts "La potenciacion es #{opt1 ** opt2}"
  end
end
