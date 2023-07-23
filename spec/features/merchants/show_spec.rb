require 'rails_helper'

RSpec.describe 'merchant item index page' do 
  describe 'merchant item index page displays merchants by name' do 
    it "shows merchant's items name and unit price" do 
      visit merchant_path(1)

      expect(page).to have_content("Item Nemo Facere")
      expect(page).to have_content("42.91")

    end
  end
end