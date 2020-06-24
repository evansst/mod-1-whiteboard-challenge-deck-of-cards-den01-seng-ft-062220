# Deck class consisting of 52 card objects
require 'pry'

class Deck
  attr_reader :cards

  # RANK_ARRAY = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  # SUIT_ARRAY = ["Hearts", "Clubs", "Diamonds", "Spades"]

  def initialize
    @cards = []
    rank_array.each do |rank|
      suit_array.each do |suit|
        new_card = Card.new(suit, rank)
        @cards << new_card
      end
    end
  end

  def rank_array 
    ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
  end

  def suit_array 
    ["Hearts", "Clubs", "Diamonds", "Spades"]
  end

  def choose_card
    @cards.delete(@cards.sample)
  end

end

class Card
  attr_accessor :rank, :suit

  def initialize (suit, rank)
    @rank = rank
    @suit = suit
  end
end
