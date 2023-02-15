require 'rails_helper'

RSpec.describe 'Index' do
  before(:each) do
    @item1 = ItemFacade.one(4)
    @item2 = ItemFacade.one(5)
    @item3 = ItemFacade.one(6)
    @item4 = ItemFacade.one(7)
    @item5 = ItemFacade.one(8)

    visit items_path
  end

  it 'has the app title' do
    expect(page).to have_content("Items")
  end

  it 'has a list of links to Merchant Path' do
    expect(current_path).to eq(items_path)

    within("#item-id-#{@item1.id}") do
      expect(page).to have_link(@item1.name)
    end
    within("#item-id-#{@item2.id}") do
      expect(page).to have_link(@item2.name)
    end
    within("#item-id-#{@item3.id}") do
      expect(page).to have_link(@item3.name)
    end
    within("#item-id-#{@item4.id}") do
      expect(page).to have_link(@item4.name)
    end
    within("#item-id-#{@item5.id}") do
      expect(page).to have_link(@item5.name)
    end
  end

  it 'has a links that route to a Merchant Path' do
    expect(current_path).to eq(items_path)

    within("#item-id-#{@item1.id}") do
      expect(page).to have_link(@item1.name)
      click_on(@item1.name)
    end

    expect(current_path).to eq(item_path(@item1.id))
  end
end
