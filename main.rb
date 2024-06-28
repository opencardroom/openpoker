require 'gosu'

class GameWindow < Gosu::Window

  GAME_WINDOW_WIDTH = 800
  GAME_WINDOW_HEIGHT = 600
  GAME_WINDOW_TITLE = 'Open Poker'
  GAME_FONT_SIZE = 32
  GAME_MESSAGE = 'Shuffle up and deal!'

  def initialize
    super GAME_WINDOW_WIDTH, GAME_WINDOW_HEIGHT
    self.caption = GAME_WINDOW_TITLE

    @message = Gosu::Font.new(GAME_FONT_SIZE)
  end

  def update
  end

  def draw
    @message.draw_text(GAME_MESSAGE, 200, 200, 1)
  end
end

window = GameWindow.new
window.show