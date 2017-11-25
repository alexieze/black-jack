class Player < User

  def initialize(name)
    super(name)
    @show_cards = true
  end

  def next_step(hand)
    puts 'Вы можете пропустить ход либо взять еще одну карту else/skip'
    next_step = gets.chomp.to_s
    if next_step 'else'
    end
  end
end