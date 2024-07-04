class Card

  SUITS = %i[hearts diamonds clubs spades].freeze
  RANKS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13].freeze
  READABLE_RANK = { 1 => 'ace', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
                    6 => '6', 7 => '7', 8 => '8', 9 => '9', 10 => '10',
                    11 => 'jack', 12 => 'queen', 13 => 'king' }.freeze

  attr_reader :suit, :rank, :image

  @@unique_cards = {}

  def self.create(suit:, rank:)
    key = [suit, rank]
    @@unique_cards[key] ||= new(suit: suit, rank: rank)
  end

  def initialize(suit:, rank:)
    @suit = suit
    @rank = rank
    @image = load_image
  end

  def to_s
    "#{readable_rank.capitalize} of #{suit.capitalize}"
  end

  def readable_rank
    READABLE_RANK[@rank]
  end

  private_class_method :new

  private

  IMAGE_DIR = './assets/images/cards'.freeze
  def load_image
    pattern = /(^#{readable_rank}_of_#{suit}).*.png/i
    image_paths = Dir.glob(File.join(IMAGE_DIR, '*')).select { |path| File.basename(path).match(pattern) }
    image_path = image_paths.first
    Gosu::Image.new(image_path)
  end

end
