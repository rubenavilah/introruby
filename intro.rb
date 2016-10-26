=begin
print("Hola Mundo!")
puts "Hola mundito!"

puts "un String".length
puts "unstring".reverse

my_name = "Ruben"
puts my_name.reverse!
puts my_name
puts my_name.upcase
puts my_name.downcase
puts my_name.capitalize
my_last_name = gets.chomp
puts my_name + my_last_name
puts "Hola querido #{my_name}!"

puts 1 == 1
puts 1 != 1
puts 1 > 1
puts 1 == "1"
puts 1.eql? "1"
puts 1.eql? 1
=end
puts 1.eql? "1" #Compare datatype and value
puts 1.equal? 1 #Compare datatype, value and object in memory
puts 1 <=> 2 #-1
puts 2 <=> 1 #1
puts 1 <=> 1 #0
puts 1 == 1 and true
puts 1 == 1 or true

puts "que chimba" if 1 == 1
puts "que chimba" if 1 != 1

if 1 == 1
  puts "Son iguales"
end

uno = 1
dos = 2

if uno == dos
  puts "mentira"
else
  puts "verdad"
end

if uno == dos
  puts "mentira"
elsif uno != dos
  puts "verdad"
end

if uno > 3 then puts "Es mayor" else puts "Es menor" end

my_feel = gets.chomp
case my_feel
when "mal"
  puts ":("
when "bien"
  puts ":)"
else
  puts ":O"
end

unless my_feel == ":("
  puts "Estoy bien"
end

unless my_feel == ":)"
  puts "Estoy mal"
else
  puts "Life is great"
end
















# Mi comentario :)
=begin
  Multiline not works in Rails
=end
