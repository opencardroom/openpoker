require 'gosu'

class MainWindow < Gosu::Window

  GAME_WINDOW_WIDTH = 800
  GAME_WINDOW_HEIGHT = 600
  GAME_WINDOW_TITLE = 'Open Poker'
  GAME_FONT_SIZE = 32
  GAME_MESSAGE = 'Shuffle up and deal!'

  def initialize
    super GAME_WINDOW_WIDTH, GAME_WINDOW_HEIGHT
    self.caption = GAME_WINDOW_TITLE

    @message = Gosu::Font.new(GAME_FONT_SIZE)
    @card_ace = Gosu::Image.new('./assets/images/cards/ace_of_clubs.svg.png')
    @card_two = Gosu::Image.new('./assets/images/cards/2_of_clubs.svg.png')
  end

  def update
  end

  def draw
    @message.draw_text(GAME_MESSAGE, 200, 200, 1)
    @card_ace.draw(300,300,0)
    @card_two.draw(350,300,0)
  end
end
