require 'rails_helper'

feature 'Add new restaurant' do
  scenario 'add a single restaurant' do
    visit 'restaurants'
    click_link 'New Restaurant'
    fill_in :Name, :with => 'Rocket Sausages'
    fill_in :Description, :with => 'The best vegan sausages ever!! (Not veggie).'
    click_button 'Add Restaurant'
    expect(page.status_code).to eq(200)
    expect(page).to have_content('Rocket Sausages')
    expect(page).to have_content('The best vegan sausages ever!! (Not veggie).')
  end

  scenario 'add multiple restaurants' do
    visit 'restaurants'
    click_button 'New Restaurant'
    fill_in :Name, :with => 'Rocket Sausages'
    fill_in :Description, :with => 'The best vegan sausages ever!! (Not veggie).'
    click_button 'Add Restaurant'
    click_button 'New Restaurant'
    fill_in :Name, :with => 'Super Meat Store'
    fill_in :Description, :with => 'Ironically this is a big vegan restaurant too.
    But a lot of confused meat eaters visit and a are highly disappointed...'
    click_button 'Add Restaurant'
    expect(page).to have_content('Rocket Sausages')
    expect(page).to have_content('The best vegan sausages ever!! (Not veggie).')
    expect(page).to have_content('Super Meat Store')
    expect(page).to have_content('Ironically this is a big vegan restaurant too.
    But a lot of confused meat eaters visit and a are highly disappointed...')
  end
end
