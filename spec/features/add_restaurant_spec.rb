require 'rails_helper'


feature 'Add new restaurant' do
  scenario 'add a single restaurant' do
    add_restaurant('Rocket Sausages', 'The best vegan sausages ever!! (Not veggie).')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('Rocket Sausages')
    expect(page).to have_content('The best vegan sausages ever!! (Not veggie).')
  end
end
