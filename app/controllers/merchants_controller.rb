class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all
  end

  def show
    @merchant = MerchantFacade.one(params[:id])
    @items    = ItemFacade.all_merchant(@merchant.id)
  end
end
