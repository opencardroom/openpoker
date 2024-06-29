class Card

  SUITS = %w[Hearts Diamonds Clubs Spades]
  RANKS = %w[2 3 4 5 6 7 8 9 10 Jack Queen King Ace]

  attr_reader :suit, :rank

  def initialize(suit, rank)
    @suit = suit
    @rank = rank
  end

  def to_s
    "#{rank} of #{suit}"
  end

end
