class ItemsController < ApplicationController
  def index
    @items = ItemFacade.all
  end

  def show
    @item = ItemFacade.one(params[:id])
  end
end
