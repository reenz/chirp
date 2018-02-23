feature 'Add a review' do
  scenario 'Store review in database' do
   add_restaurant('Meat and Egg', 'Poached eggs on a lovely steak')
   page.all(:link, 'Show')[0].click
   expect{ add_rating(5) }.to change{ Review.count }
 end

  scenario 'Add a review for an existing restaurant' do
    sign_up("user@test.com", "password", "password")
    add_restaurant('Meat and Egg', 'Poached eggs on a lovely steak')
    add_restaurant('Lovely Veggies', 'Home-grown stuff for veggie lovers')
    page.all(:link, 'Show')[1].click
    add_rating(5)
    add_rating_and_comment(2, 'Bad vegetables')
    expect(page).to have_content('5')
    expect(page).to have_content('2')
    expect(page).to have_content('Bad vegetables')
    expect(page).not_to have_content('Meat and Egg')
    expect(page).to have_content("user@test.com")
  end

feature 'no rating is added to the review' do
  before do
    add_restaurant('Lovely Veggies', 'Home-grown stuff for veggie lovers')
    click_link 'Show'
  end

  scenario 'the page displays an error message' do
    add_comment('I liked this one')
    expect(page).to have_content('Must provide a rating')
  end

  scenario 'the review should not be saved' do
    expect{ add_comment('nice restaurant') }.to_not change{ Review.count }
  end
end
end
