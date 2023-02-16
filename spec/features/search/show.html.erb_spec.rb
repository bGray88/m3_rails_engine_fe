require 'rails_helper'

RSpec.describe 'Show' do
  before(:each) do
    @item1 = ItemFacade.one(10)

    visit items_path
  end

  it 'has the search button' do
    expect(page).to have_button("Search")
  end

  it 'has the object attributes' do
    fill_in("Search", with: @item1.name)
    click_button("Search")

    expect(page).to have_content("Description: #{@item1.description}")
    expect(page).to have_content("Unit Price: #{@item1.unit_price}")
  end
end
