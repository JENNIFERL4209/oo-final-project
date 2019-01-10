class Customer
  attr_accessor :name, :minute
  def initialize(name) #takes in customer name
    @name = name.capitalize 
    puts "Welcome #{@name}, Here is Pine Pine Apple!" #greeting
  end

  def pick_up(minute) #time customer needs to pick up order
    @minute = minute.to_s #integer to string
  end

end

class Drink
  attr_accessor :drink, :customer, :flavor, :choice, :ingredients, :ingred, :drinks
  def initialize(customer,drink)
    @drink = drink #customer selects bubble tea or juice
    @ingredients = [] #ingredients in juice
    @@drinks = [] #returns drinks of what customer orders
    puts customer.name + ", would you like to drink bubble tea or juice today?" #interacts with Customer class to get customer name
  end

  def tea(flavor)
    @flavor = flavor
    puts "You selected #{@flavor} bubble tea."
  end

  def tapioca(choice,customer)
    @choice = choice
    puts "Would you like tapioca in your tea?"
    progress
    if choice == "Y" || choice == "y"
      puts "Your #{@flavor} bubble tea with tapioca is ready. You need to pick up in #{customer.minute} minutes." #interacts with Customer class to get the pick up time
    elsif choice == "N" || choice == "n"
      puts "Your #{@flavor} bubble tea is ready. Please pick up. You need to pick up in #{customer.minute} minutes." #interacts with Customer class to get the pick up time
    end
    @@drinks << "#{@flavor}" + " tea" #pushes drink into an array to see what customers order
  end

  def juice(*ingred)
    puts "Select your ingredients for your juice."
    @ingred = ingred #optional parameter returns empty array
    @ingredients << @ingred.join #array to string and pushes the ingredients into array
    progress
    if @ingredients.length == 1 #one ingredient in array
      puts "Your juice with #{@ingredients.join} is ready."
    else
      puts "Your juice with #{@ingredients.join(" and ")} is ready."
    end
    @@drinks << "#{@ingred.join(" and ")} juice" #pushes juice into array to see what customer orders
  end

  def progress
    puts "Your drink is in progress..."
  end

end


#test
# rocky = Customer.new("rocky") #new customer
# customer_drink = Drink.new(rocky,"b") #bubble tea
# matcha = customer_drink.tea("matcha") #flavor
# order = rocky.pick_up(15) #pick up time
# bubble_time = customer_drink.tapioca("y",rocky) #with tapioca
# # bubble_time = customer_drink.tapioca("n",rocky) #without tapioca
# customer_drink = Drink.new(rocky,"j") #juice
# carrot = customer_drink.juice("carrot") #one ingredient
# carrora = customer_drink.juice("carrot","orange") #two ingredients
# ---------------------------------------------
# Command Line Application (Next Steps)
# def get_customer
#   puts "What is your name?"
#   customer_name = ""
#   customer_name = gets.chomp
#   Customer.new(customer_name)
# end

# def get_option
#   customer_option = ""
#   customer_option = gets.chomp
#   Drink.new(customer_option)
#   if customer_option == "B" || customer_option == "b"
#     tea(flavor)
#     puts "You selected" + flavor_option + " bubble tea."
#   elsif customer_option == "J" || customer_option == "j"
#     juice(*ingred)
#   end
# end

# get_customer
# get_option
# End of Command Line Application (Next Steps)

https://repl.it/@JENNIFERL4209/PinePineApple