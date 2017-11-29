class Player < User

  def initialize(name)
    super(name)
    @show_cards = false
  end

  def move(command)
    begin
      skip_step(true) if command == 'skip'
      hand.take_card if command == 'take'
      @shop_cards = true if command == 'open'
    rescue RuntimeError => e
      puts e.message
      retry
    end
  end
end