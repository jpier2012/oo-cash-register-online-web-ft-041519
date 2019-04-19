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
    @discount == 0 ? puts "There is no discount to apply." : nil
    @total * (1 + @discount)
  end

  def total
    @total
  end

  def void_last_transaction
    total -= @item_last_scanned[1] * @item_last_scanned[2]
  end
end
