feature 'Add a review' do
  scenario 'Add a review for an existing restaurant' do
    add_restaurant('Meat and Egg', 'Poached eggs on a lovely steak')
    add_restaurant('Lovely Veggies', 'Home-grown stuff for veggie lovers')
    page.all(:link, 'Show')[1].click
    expect(page).to have_content('aaaaaaaaaaaaaaa')
    fill_in :Rating, :with => 5
    click_button('Create Review')
    fill_in :rating, :with => 2
    fill_in :comment, :with => 'Bad vegetables'
    click_button('Create Review')
    expect(page).to have_content('5')
    expect(page).to have_content('2')
    expect(page).to have_content('Bad vegetables')
    expect(page).not_to have_content('Meat and Egg')
  end
end
