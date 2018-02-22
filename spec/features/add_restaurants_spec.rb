

feature 'Add new restaurant' do
  scenario 'add multiple restaurants' do
    add_restaurant('Rocket Sausages', 'The best vegan sausages ever!! (Not veggie).')
    add_restaurant('Super Meat Store', 'Ironically this is a big vegan restaurant too. But a lot of confused meat eaters visit and a are highly disappointed...')
    expect(page).to have_content('Rocket Sausages')
    expect(page).to have_content('The best vegan sausages ever!! (Not veggie).')
    expect(page).to have_content('Super Meat Store')
    expect(page).to have_content('Ironically this is a big vegan restaurant too.
    But a lot of confused meat eaters visit and a are highly disappointed...')
  end
end
