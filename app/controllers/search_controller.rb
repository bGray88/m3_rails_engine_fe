class SearchController < ApplicationController
  def show
    @item = ItemFacade.search(params[:search])
  end
end
