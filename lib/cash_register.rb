class CashRegister
  attr_reader :total, :discount, :items, :item_last_scanned

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @items << item
    @item_last_scanned = [item, price, quantity]
    @total += price * quantity
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      @total *= (1 + @discount)
      "After the discount, the total comes to #{@total}."
    end
  end

  def total
    @total
  end

  def void_last_transaction
    total -= @item_last_scanned[1] * @item_last_scanned[2]
    @items.pop
  end
end
