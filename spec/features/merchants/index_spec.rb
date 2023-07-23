require 'rails_helper'

RSpec.describe 'merchant index page' do 
  describe 'merchant index page displays merchants by name' do 
    it "shows each merchant's name as a link" do 

      visit merchants_path

      expect(page).to have_link("Schroeder-Jerde")

      expect(page).to have_link("Klein, Rempel and Jones")
    end

    it 'links display to merchant show page' do 

      visit merchants_path

      click_link("Schroeder-Jerde")

      expect(current_path).to eq(merchant_path(1))

      expect(page).to have_content("Item Nemo Facere")
    end
  end
end