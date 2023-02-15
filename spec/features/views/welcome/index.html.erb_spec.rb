require 'rails_helper'

RSpec.describe 'Welcome' do
  before(:each) do
    visit root_path
  end

  it 'has the app title' do
    expect(page).to have_content("Rails Engine Lite")
  end

  it 'has a button that links to Merchants Path' do
    expect(page).to have_button('Merchants')

    click_on('Merchants')

    expect(current_path).to eq(merchants_path)
  end
end
