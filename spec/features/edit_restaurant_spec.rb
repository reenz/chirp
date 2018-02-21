feature 'Editing a restaurant' do
  scenario 'change name and description' do
    add_restaurant('Makers Academy Kitchen', 'Almond Butter + Hummus')
    add_restaurant('South Indian', 'Best dosas')
    page.all(:link,'Edit')[0].click
    fill_in :Name, :with => 'Italian Food'
    fill_in :Description, :with => 'Spaghetti Bolognese'
    click_button 'Update'
    expect(page).not_to have_content("Makers Academy Kitchen")
    expect(page).to have_content("South Indian")
    expect(page).to have_content("Italian Food")
    expect(page).to have_content("Spaghetti Bolognese")
  end
end
