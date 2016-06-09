# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take input as string and split it
  # define a hash with the items in the grocery list as keys
# set default quantity - 1
# print the list to the console [can you use one of your other methods here?]
# output: hash with the grocery items as keys and their quantity as value

  def create_list(items)
    grocery_list = {}
    list_items = items.split
    list_items.each do |item|
      grocery_list[item] = 1
    end
    p print_list(grocery_list)
  end



# Method to add an item to a list
# input: item name and optional quantity
# steps: 
  # push new item to hash, keep default quantity of 1 if unspecified in argument
  # print new item and quantity
# output: new item and quantity

  def add_item(item_name, grocery_list, quantity=1)
    grocery_list[item_name] = quantity
    grocery_list
  end

    
# Method to remove an item from the list
# input: name of item (key) that you want to remove
# steps: use delete to remove item from hash
# output: deleted item and quantity

  def remove_item(item_name, grocery_list)
      grocery_list.delete(item_name)
      grocery_list
  end



# Method to update the quantity of an item
# input: name of the item to be updated, new quantity
# steps: reassign value of that item
# output: item with updated quantity

  def update_quantity(item_name, grocery_list, quantity)
      grocery_list[item_name] = quantity
      grocery_list
  end

# Method to print a list and make it look pretty
# input: the grocery list
# steps: iterate through the list
  # print the name of the item and the quantity for each item
# output: the name of each item and their respective quantities

  def print_list(grocery_list)
    puts "*" * 40 + "Grocery List" + "*" * 40 
    grocery_list.each do |item, quantity|
      puts "#{item.capitalize}".ljust(30) +  "#{quantity}".rjust(10)

    end
  end


#Driver Code
# grocery_list = create_list("carrots apples cereal pizza")
# p remove_item("apples", grocery_list)
# p update_quantity("carrots", grocery_list, 10)
# p add_item("tomatoes", grocery_list, 4)
# print_list(grocery_list)

create_list("lemonade tomatoes onions")
grocery_list = create_list("lemonade tomatoes onions")
p add_item("ice cream", grocery_list, 4)

p update_quantity("lemonade", grocery_list, 2)
p update_quantity("tomatoes", grocery_list, 3)
p update_quantity("ice cream", grocery_list, 1)

print_list(grocery_list)

=begin
  
What did you learn about pseudocode from working on this challenge?
  That it can make your life a lot easier, if it's detailed and well thought-through.
  I think that when I was writing the pseudocode for this challenge, I could have broken
  down the steps more than I did.
What are the tradeoffs of using arrays and hashes for this challenge?
  I don't really see any benefits to using an array over a hash for this challenge. The hash allows
  you to correlate two values (the item and the quantity).
What does a method return?
  The last evaluated expression.
What kind of things can you pass into methods as arguments?
  Integer, string, float, boolean, array, hash, or other methods!
How can you pass information between methods?
  By calling a method within another method, or using it as an argument in that method.
What concepts were solidified in this challenge, and what concepts are still confusing?
  I definitely feel like I have a stronger grasp of how methods can interact with one another and a little bit
  better of a sense of what is and is not attainable from within a given method. However, I still feel like I
  have a long way to go before I really understand how scope works in Ruby.
  
=end