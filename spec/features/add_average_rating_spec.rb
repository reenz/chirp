feature 'show average ratings' do
  before(:each) do
    sign_up("user@test.com", "password", "password")  
    add_restaurant('Nandos', 'Some chicken in some form')
    page.all(:link, 'Show')[0].click
    add_rating(5)
    add_rating(4)
    add_rating(4)
  end

  scenario 'after adding several ratings, the average should appear on the individual page' do
    expect(page).to have_content('4.3')
    expect(page).not_to have_content('4.33')
  end

  scenario 'show average rating for each restaurant on restaurants page' do
     click_link('Back')
     add_restaurant('Japanese Kento', 'Lovely sushi')
     page.all(:link, 'Show')[1].click
     add_rating(2)
     add_rating(3)
     add_rating(5)
     click_link('Back')
     expect(page).to have_content('4.3')
     expect(page).to have_content('3.3')
  end

  scenario 'displays "no rating yet" on the restaurants page' do
    click_link('Back')
    add_restaurant('Leon','Lots of healthy food')
    expect(page).to have_content('no ratings yet')
    expect(page).to have_content('Leon')
    expect(page).not_to have_content('0.0')
  end


  scenario 'displays "no rating yet" if there is no rating on the individual page' do
    click_link('Back')
    add_restaurant('Leon','Lots of healthy food')
    page.all(:link, 'Show')[1].click
    expect(page).to have_content('no ratings yet')
    expect(page).to have_content('Leon')
    expect(page).to have_content('Lots of healthy food')
    expect(page).not_to have_content('0.0')
  end
end
