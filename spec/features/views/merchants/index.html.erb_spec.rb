require 'rails_helper'

RSpec.describe 'Index' do
  before(:each) do
    @merchant1 = MerchantFacade.one(1)
    @merchant2 = MerchantFacade.one(2)
    @merchant3 = MerchantFacade.one(3)
    @merchant4 = MerchantFacade.one(4)
    @merchant5 = MerchantFacade.one(5)

    visit merchants_path
  end

  it 'has the app title' do
    expect(page).to have_content("Merchants")
  end

  it 'has a list of links to Merchant Path' do
    expect(current_path).to eq(merchants_path)

    within("#merchant-id-#{@merchant1.id}") do
      expect(page).to have_link(@merchant1.name)
    end
    within("#merchant-id-#{@merchant2.id}") do
      expect(page).to have_link(@merchant2.name)
    end
    within("#merchant-id-#{@merchant3.id}") do
      expect(page).to have_link(@merchant3.name)
    end
    within("#merchant-id-#{@merchant4.id}") do
      expect(page).to have_link(@merchant4.name)
    end
    within("#merchant-id-#{@merchant5.id}") do
      expect(page).to have_link(@merchant5.name)
    end
  end

  it 'has a links that route to a Merchant Path' do
    expect(current_path).to eq(merchants_path)

    within("#merchant-id-#{@merchant1.id}") do
      expect(page).to have_link(@merchant1.name)
      click_on(@merchant1.name)
    end

    expect(current_path).to eq(merchant_path(@merchant1.id))
  end
end
