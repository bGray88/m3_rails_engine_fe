class MerchantService
  def self.conn
    Faraday.new(url: "http://127.0.0.1:3000")
  end

  def self.merchant(id)
    JSON.parse(MerchantService.conn.get("/api/v1/merchants/#{id}").body, symbolize_names: true)
  end

  def self.merchants
    JSON.parse(MerchantService.conn.get("/api/v1/merchants").body, symbolize_names: true)
  end
end
