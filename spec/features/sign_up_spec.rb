feature 'User Sign-up' do
  scenario 'user can sign up' do
    visit 'users/sign_up'
    fill_in "user[email]", :with => "user@test.com"
    fill_in 'user[password]' ,:with => "password"
    fill_in "user[password_confirmation]", :with => "password"
    click_button "Sign up"
    expect(page).to have_current_path('/restaurants')
    expect(page).to have_content('Welcome! You signed up successfully')
  end
end
