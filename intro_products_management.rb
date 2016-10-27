products = ["Negan",
  "Glen Eating Pizza",
  "Glen eye out of his head",
  "Abraham",
  "Homero Jay Simpson",
  "Jhon Snow",
  "Moe Sislack",
  "Tyrion",
  "Eleven",
  "El chavo",
  "Don Ramon",
  "Chompiraz"
]
products_characteristics = {}
products.each do |p|
  products_characteristics[p] = {
    cost: 10,
    color: "undefined",
    index: nil
  }
end
shopping_car = {}
user_character = nil

while user_character != "exit"
  puts "Costume Store #################"
  puts '###############################'
  puts "Please, type the name of the character"
  user_character = gets.chomp.downcase
  break if user_character == "exit"

  index = 0
  matched_index = []
  until index >= products.length
    if products[index].downcase.include? user_character
      puts "Your costume is: ##{index}. #{products[index]}"
      matched_index << index
    end
    index += 1
  end

  #user_character is the name who user type
  if matched_index.any?
    until matched_index.include? user_character
      puts "please select your Costume"
      user_character = gets.chomp.to_i

      if matched_index.include? user_character
        puts "You choose #{products[user_character]}"
        puts "Do you want to buy it? #{products_characteristics[products[user_character]][:cost]} lukas perro (yes/no)"
        if gets.chomp == "yes"
          shopping_car[products[user_character]] = "Comprado"
        else

        end
      else
        puts "That costume does not exist"
      end
    end
  else
    puts "We did not find your costume, sorry"
  end

  puts "Your shopping car: " if shopping_car.any?
  puts shopping_car if shopping_car.any?
end
