require 'rails_helper'


feature 'Add new restaurant' do
  scenario 'add a single restaurant' do
    add_restaurant('Rocket Sausages', 'The best vegan sausages ever!! (Not veggie).')
    expect(page.status_code).to eq(200)
    expect(page).to have_content('Rocket Sausages')
    expect(page).to have_content('The best vegan sausages ever!! (Not veggie).')
  end

  scenario 'add a restaurant without a name' do
    visit 'restaurants'
    click_link 'New Restaurant'
    fill_in :Description, :with => 'Yuuuuuuge portions!'
    click_button 'Add Restaurant'
    expect(page).to have_current_path('/restaurants/new?notice=Must+enter+a+restaurant+name.')
    expect(page).to have_content('Must enter a restaurant name.')
    expect(find_field('Description').value).to eq 'Yuuuuuuge portions!'
    expect(Restaurant.find_by description: 'Yuuuuuuge portions!').to be_nil
  end

  scenario "displays 'no rating yet' if there is no rating" do
    add_restaurant('Leon','Lots of healthy food')
    click_link ('Show')
    p @restaurant
    expect(page).to have_content('no ratings yet')
    expect(page).to have_content('Leon')
    expect(page).to have_content('Lots of healthy food')
  end


end
