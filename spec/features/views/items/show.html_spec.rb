require 'rails_helper'

RSpec.describe 'Show' do
  before(:each) do
    @item1 = ItemFacade.one(10)

    visit item_path(@item1.id)
  end

  it 'has the object title' do
    expect(page).to have_content("Item #{@item1.name}")
  end

  it 'has the object attributes' do
    expect(page).to have_content("Description: #{@item1.description}")
    expect(page).to have_content("Unit Price: #{@item1.unit_price}")
  end
end
