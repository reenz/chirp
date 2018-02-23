feature 'Rating validation' do
  scenario 'A rating must be between 1 and 5' do
    add_restaurant('Meat and Egg', 'Poached eggs on a lovely steak')
    click_link 'Show'
    add_rating(7)
    expect(page).not_to have_content('7')
    expect(page).to have_content('Review must be between 1 and 5')
  end
end
