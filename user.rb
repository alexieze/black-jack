class User

  attr_accessor :money, :skip_step
  attr_reader :cards

  def initialize(name)
    @name = name
    @skip_step = false
    @money = 0
    @cards = []
    @one_bet = 10
    @show_cards = true
  end

  def skiped_step?
    skip_step
  end

  def open_cards
    @cards.each do |name|
      puts name
    end
  end

  def take_cards(cards)
    @cards << cards
  end

  def see_cards
    if @show_cards
      @cards.each { |cards| cards.each { |card| puts card[:name] } }
    else
      @cards.each { |cards| cards.each { |card| puts ' ... ' } }
    end
  end

  def make_bet
    if check_money?
      @money -= @one_bet
      @one_bet
    end
  end

  def check_money?
    @money >= 10
  end

end