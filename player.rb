class Player < User

  def initialize(name)
    super(name)
    @show_cards = true
  end
end