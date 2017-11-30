require_relative 'user'

class Player < User

  def initialize(name)
    super(name)
  end

  def move(command)
    begin
      self.skip_step = true if command == 'skip'
      hand.take_card if command == 'take'
      self.open_cards = true if command == 'open'
    rescue RuntimeError => e
      puts e.message
      retry
    end
  end
end