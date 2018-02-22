feature 'show average ratings' do
  scenario 'after adding several ratings, the average should appear on a restaurants page' do
    add_restaurant('Nandos', 'Some chicken in some form')
    page.all(:link, 'Show')[0].click
    
  end
end
