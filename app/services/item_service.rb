class ItemService
  def self.conn
    Faraday.new(url: "http://127.0.0.1:3000")
  end

  def self.item(id)
    JSON.parse(ItemService.conn.get("/api/v1/items/#{id}").body, symbolize_names: true)
  end

  def self.items_merchant(id)
    JSON.parse(ItemService.conn.get("/api/v1/merchants/#{id}/items").body, symbolize_names: true)
  end

  def self.items
    JSON.parse(ItemService.conn.get("/api/v1/items").body, symbolize_names: true)
  end

  def self.items_search(partial)
    JSON.parse(ItemService.conn.get("/api/v1/items/find?name=#{partial}").body, symbolize_names: true)
  end
end
