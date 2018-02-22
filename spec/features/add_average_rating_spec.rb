feature 'show average ratings' do
  scenario 'after adding several ratings, the average should appear on a restaurants page' do
    add_restaurant('Nandos', 'Some chicken in some form')
    page.all(:link, 'Show')[0].click
    add_rating(5)
    add_rating(4)
    add_rating(4)
    expect(page).to have_content('4.3')
    expect(page).not_to have_content('4.33')
  end
end
