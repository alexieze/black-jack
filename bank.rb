class Bank

  attr_reader :money
  attr_accessor :cash_of_game

  def initialize
    @money = 100
    @cash_of_game = 0
  end

  def withdraw_money
    @money -= 10 if @money >= 10
  end
end