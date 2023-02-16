class SearchController < ApplicationController
  def index
    @item = ItemFacade.search(params[:search])
  end
end
