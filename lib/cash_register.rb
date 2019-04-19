class CashRegister
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount, :items, :item_last_scanned

  def add_item(item, price, quantity = 1)
    @items << item
    @item_last_scanned = [item, price, quantity]
    @total += price.to_f * quantity
  end

  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      @total = @total * (100 - discount)/100
      "After the discount, the total comes to #{@total}."
    end
  end

  def void_last_transaction
    total -= @item_last_scanned[1] * @item_last_scanned[2]
    @items.pop
  end
end

# cash = CashRegister.new(20)
#
# puts cash
#
# cash.add_item("fruit", 2.00, 3)
#
# puts cash.total
