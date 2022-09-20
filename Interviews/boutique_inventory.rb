class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map{ |item| item[:name] }.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30.00 }
  end

  def out_of_stock
    @items.select{ |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.each {|item| return item[:quantity_by_size] if item[:name] == name}
  end

  def total_stock
    @items.map { |item| item[:quantity_by_size].values}.flatten.sum
  end

  private
  attr_reader :items
end

b = BoutiqueInventory.new([
  {price: 65.00, name: "Maxi Brown Dress", quantity_by_size: {s: 3, m: 7, l: 8, xl: 4}},
  {price: 50.00, name: "Red Short Skirt", quantity_by_size: {}},
  {price: 29.99, name: "Black Short Skirt", quantity_by_size: {s: 1, xl: 4}},
  {price: 20.00, name: "Bamboo Socks Cats", quantity_by_size: {s: 7, m: 2}}
])
# p b.item_names
# p b.cheap
# p b.out_of_stock
# p b.stock_for_item("Black Short Skirt")
p b.total_stock
