feature 'User login' do
  scenario 'User can login and see their email address on the main restaurant page' do
    visit 'users/sign_up'
    fill_in "user[email]", :with => "user@test.com"
    fill_in 'user[password]' ,:with => "password"
    fill_in "user[password_confirmation]", :with => "password"
    click_button "Sign up"
    expect(page).to have_content("user@test.com")
  end
end
