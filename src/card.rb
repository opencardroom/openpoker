class Card

  SUITS = %i[hearts diamonds clubs spades].freeze
  RANKS = %i[1 2 3 4 5 6 7 8 9 10 11 12 13].freeze
  READABLE_RANK = {
    '1': 'ace',
    '2': 'deuce',
    '3': '3',
    '4': '4',
    '5': '5',
    '6': '6',
    '7': '7',
    '8': '8',
    '9': '9',
    '10': '10',
    '11': 'jack',
    '12': 'queen',
    '13': 'king'
  }.freeze

  attr_reader :suit, :rank

  def initialize(suit:, rank:)
    @suit = suit
    @rank = rank
  end

  def to_s
    "#{readable_rank.capitalize} of #{suit.capitalize}"
  end

  def readable_rank
    READABLE_RANK[@rank]
  end

end
