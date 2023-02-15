class MerchantFacade
  def self.all
    MerchantService.merchants[:data].map do |merchant|
      Merchant.new(merchant)
    end
  end

  def self.one(id)
    Merchant.new(MerchantService.merchant(id)[:data])
  end
end
