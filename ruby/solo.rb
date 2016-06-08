=begin
  
pseudocode:
  - define class for playing cards
  - add initialize method with attributes for number of cards, color of cards, stickiness of cards, and whether cards are in good condition
  - add method for dealing cards
    - it takes an integer (the number of players) and divides the number of cards by that integer
  - add method for throwing cards on the floor
    - ruins card condition
  - add method for printing the stickiness of the cards
=end

class Cards

  attr_reader :number_of_cards
  attr_accessor :card_color, :stickiness, :good_condition

  def initialize(card_color)
    puts "Initializing deck of cards..."
    @number_of_cards = 52
    @card_color = card_color
    @stickiness = rand(0-10)
    @good_condition = true
  end

  def card_dealer(number_of_players)
    cards_in_each_hand = @number_of_cards / number_of_players
    puts "#{cards_in_each_hand} cards have been dealt to each player."
  end

  def throw_cards_on_floor
    @good_condition = false
    puts "Look what you did! Now the queen of spades is bent."
  end

  def check_stickiness
    if @stickiness >= 2
      puts "Your cards aren't sticky at all."
    elsif @stickiness == 3..5
      puts "Maybe it's time to start washing your hands before you sit down at the poker table."
    elsif @stickiness == 6..8
      puts "Ew. These need to be washed. Is that a thing? It needs to be a thing."
    elsif @stickiness <= 9
      puts "That's disgusting. You can't even play with these."
      @good_condition = false
    end
  end

end

decks_of_cards []
puts "Hello! What color of cards can I get for you?"
card_color = gets.chomp
decks_of_cards[deck_1] << Cards.new(card_color)
puts "Great! Should we check how sticky these are? (y/n)"
answer = gets.chomp
  if answer == "y" || "yes"
    

#driver code
#deck = Cards.new("blue")
#p deck

#deck.card_dealer(4)

#deck.throw_cards_on_floor

deck.check_stickiness