require 'rails_helper'

feature 'Add new restaurant' do
  scenario 'add a single restaurant' do
    visit 'restaurants/new'
    fill_in :Name, :with => 'Rocket Sausages'
    fill_in :Description, :with => 'The best vegan sausages ever!! (Not veggie).'
    click_button 'add a restaurant'
    expect(response).to have_status(200)
    expect(page).to have_content('Rocket Sausages')
    expect(page).to have_content('The best vegan sausages ever!! (Not veggie).')
  end
end
