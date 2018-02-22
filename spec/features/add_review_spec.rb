feature 'Add a review' do
  scenario 'Store review in database' do
   add_restaurant('Meat and Egg', 'Poached eggs on a lovely steak')
   page.all(:link, 'Show')[0].click
   expect{ add_rating(5) }.to change{Review.count}
 end

  scenario 'Add a review for an existing restaurant' do
    add_restaurant('Meat and Egg', 'Poached eggs on a lovely steak')
    add_restaurant('Lovely Veggies', 'Home-grown stuff for veggie lovers')
    page.all(:link, 'Show')[1].click
    add_rating(5)
    add_rating_and_comment(2, 'Bad vegetables')
    expect(page).to have_content('5')
    expect(page).to have_content('2')
    expect(page).to have_content('Bad vegetables')
    expect(page).not_to have_content('Meat and Egg')
  end
end
