# Initialize an empty array and store it in a variable (you can choose the name). Print the variable using p.

  card_games = []
  p card_games

# Add five items to your array. Print the array.

  card_games.push("poker", "hearts", "go fish", "gin rummy", "eucre")
  p card_games

# Delete the item at index 2. Print the array.

  # clunky way:
  # card_games.delete(card_games[2])
  # p card_games

  # better way:
  card_games.delete_at(2)
  p card_games

# Insert a new item at index 2. Print the array.

  # adds two elements together
  # card_games[2] << "bridge"
  # p card_games

  # replaces element
  # card_games[2] = "bridge"
  # p card_games

  card_games.insert(2, "bridge")
  p card_games

# Remove first item of array without having to refer to its index. Print the array.

  card_games.shift
  p card_games

# Ask the array whether it includes a certain item. Print the result of this method call (label it so it prints as more than just an isolated boolean value without any context).

  puts "It is #{card_games.include?("war")} that the card game war is  included in our array of card games."

# Initialize another array that already has a few items in it.

  other_card_games = ["blackjack", "solitaire"]
  p other_card_games

# Add the two arrays together and store them in a new variable.

  best_card_games = card_games + other_card_games
  p best_card_games