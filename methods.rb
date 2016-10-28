@products = nil
@products_characteristics = nil
@shopping_car = nil
@user_character = nil

def init
  @products = ["Negan",
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
  @products_characteristics = {}
  @products.each_with_index do | p, i |
    @products_characteristics[p] = {
      cost: 1 + rand(10),
      color: "undefined",
      index_product: i
    }
  end
  @shopping_car = {}
  @user_character = nil
end

def print_welcome_msj
    puts "Costume Store #################"
    puts '###############################'
    puts "Please, type the name of the character"
    gets.chomp.downcase
end

# print the matched costumes and return
# an array with the costumes
def find_costumes
  index = 0
  matched_index = []
  until index >= @products.length
    if @products[index].downcase.include? @user_character
      puts "Your costume is: ##{index}. #{@products[index]}"
      matched_index << index
    end
    index += 1
  end
  matched_index
end

# if the matched_index include the index typed by the user
# ask the user if her/she wants to buy it
# params:
# matched_index: indexes array
def check_and_ask_buy (matched_index)
  if matched_index.include? @user_character
    puts "You choose #{@products[@user_character]}"
    puts "Do you want to buy it? #{@products_characteristics[@products[@user_character]][:cost]} lukas perro (yes/no)"
    answer = gets.chomp
    if answer == "yes" or answer == "y"
      @shopping_car[@products[@user_character]] = "Comprado"
    end
  else
    puts "That costume does not exist"
  end
end

def select_your_order (matched_index)
  if matched_index.any?
    @user_character  = -1
    until matched_index.include? @user_character
      puts "please select your Costume"
      @user_character = gets.chomp.to_i
      check_and_ask_buy matched_index
    end
  else
    puts "We did not find your costume, sorry"
  end
end

def print_shopping_car
  puts "Your shopping car: " if @shopping_car.any?
  puts @shopping_car if @shopping_car.any?
end

init # Init variable
while @user_character != "exit"
  @user_character = print_welcome_msj # print welcome msj, returns the user input
  break if @user_character == "exit" # exit condition
  matched_index = find_costumes #find the user costumes based on the @user_character
  select_your_order matched_index #select the order from the user
  print_shopping_car # print the shopping car

  #user_character is the name who user type
end
