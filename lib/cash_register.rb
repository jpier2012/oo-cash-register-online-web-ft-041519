class CashRegister
  attr_reader :total, :discount, :items, :item_last_scanned

  def initialize(total = 0, discount = 0)
    @total = total
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @items << item
    @item_last_scanned = [item, price, quantity]
    @total += price * quantity
  end

  def apply_discount
    @total * (1 + @discount)
  end

  def total
    @total
  end


end
