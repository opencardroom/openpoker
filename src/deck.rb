class Deck

  attr_reader :cards

  def initialize
    @cards = []

    reset!
  end

  def shuffle!
    @cards.shuffle!
  end

  def draw!
    @cards.pop
  end

  def length
    @cards.length
  end

  def reset!
    @cards.clear

    Card::SUITS.each do |suit|
      Card::RANKS.each do |rank|
        @cards << Card.new(suit, rank)
      end
    end

    @cards
  end

end
