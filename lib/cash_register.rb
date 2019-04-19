class CashRegister

  attr_reader :total, :discount
  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount
  end

  def add_item(item, price)
    
  end

  def total
    @total
  end
end
