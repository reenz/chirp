require 'rails_helper'

feature 'Add restaurant and destroy it' do
  scenario 'it deletes the restaurant content' do
    add_restaurant('Indian Sweets', 'Best rasmalai')
    add_restaurant('South Indian', 'Best dosas')
    page.all(:link,'Destroy Restaurant')[1].click
    expect(page).not_to have_content('South Indian')
    expect(page).to have_content('Indian Sweets')
  end
end
