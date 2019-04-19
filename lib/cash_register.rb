class CashRegister
  @items = []
  @last_item_scanned

  attr_reader :total, :discount

  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount
  end

  def self.items
    @@items
  end

  def add_item(item, price, quantity = 1)

  end

  def total
    @total
  end
end
