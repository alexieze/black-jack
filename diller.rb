class Diller < User

  def initialize(name)
    super(name)
    @show_cards = false
  end
end