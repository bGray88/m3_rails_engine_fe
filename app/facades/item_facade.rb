class ItemFacade
  def self.all_merchant(merchant_id)
    ItemService.items_merchant(merchant_id)[:data].map do |item|
      Item.new(item)
    end
  end

  def self.all
    ItemService.items[:data].map do |item|
      Item.new(item)
    end
  end

  def self.one(item_id)
    Item.new(ItemService.item(item_id)[:data])
  end
end
