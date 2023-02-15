require 'rails_helper'

RSpec.describe 'Show' do
  before(:each) do
    @merchant1 = MerchantFacade.one(1)
    @items     = ItemFacade.all_merchant(@merchant1.id)

    visit merchant_path(@merchant1.id)
  end

  it 'has the object title' do
    expect(page).to have_content("Merchant #{@merchant1.name}")
  end

  it 'lists all of the merchant\'s items' do
    expect(page).to have_content(@items.first.name)
  end
end
