class Card

  SUITS = %i[hearts diamonds clubs spades].freeze
  RANKS = %i[2 3 4 5 6 7 8 9 10 jack queen king ace].freeze

  attr_reader :suit, :rank

  def initialize(suit:, rank:)
    @suit = suit
    @rank = rank
  end

  def to_s
    "#{rank.capitalize} of #{suit.capitalize}"
  end

end
