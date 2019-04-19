class CashRegister
  attr_reader :total, :discount, :items, :item_last_scanned

  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
    self.items << item
    @item_last_scanned = self.items[-1]
  end

  def apply_discount

  end

  def total
    @total
  end
end
