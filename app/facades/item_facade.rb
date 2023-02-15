class ItemFacade
  def self.all(merchant_id)
    ItemService.items(merchant_id)[:data].map do |item|
      Item.new(item)
    end
  end

  def self.one(item_id)
    Item.new(ItemService.item(item_id)[:data])
  end
end
