feature 'show average ratings' do
  scenario 'after adding several ratings, the average should appear on a restaurants page' do
    add_restaurant('Nandos', 'Some chicken in some form')
    page.all(:link, 'Show')[0].click
    add_rating(2)
    add_rating(2)
    add_rating(5)
    expect(page).to have_content('3')
  end
end
