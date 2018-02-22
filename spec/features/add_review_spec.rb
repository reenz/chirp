feature 'Add a review' do
  scenario 'Add a review for an existing restaurant' do
    add_restaurant('Meat and Egg', 'Poached eggs on a lovely steak')
    add_restaurant('Lovely Veggies', 'Home-grown stuff for veggie lovers')
    page.all(:link, 'Show')[1].click
    fill_in :rating, :with => 5
    click_button('Create Review')
  end
end
