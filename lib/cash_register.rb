class CashRegister

  attr_reader :total
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
end
