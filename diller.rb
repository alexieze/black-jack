require_relative 'user'
class Diller < User

  def initialize(name)
    super(name)
    @show_cards = false
  end

  def move

  end
end