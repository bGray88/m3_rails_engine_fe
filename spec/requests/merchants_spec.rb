require 'rails_helper'

RSpec.describe "Merchants" do
  describe "GET /merchants" do
    it "returns http success" do
      get merchants_path

      expect(response).to be_successful
    end
  end
end
