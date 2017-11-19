class Bank
  def initialize
    @money = 100
  end

  def amount_money
    @money
  end

  def withdraw_money
    @money -= 10 if @money >= 10
  end
end