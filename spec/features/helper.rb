
def sign_up(email, password, password_confirmation)
  visit 'users/sign_up'
  fill_in "user[email]", :with => email
  fill_in 'user[password]' ,:with => password
  fill_in "user[password_confirmation]", :with => password_confirmation
  click_button "Sign up"
end

def add_restaurant(name, description)
  visit 'restaurants'
  click_link 'New Restaurant'
  fill_in :Name, :with => name
  fill_in :Description, :with => description
  click_button 'Add Restaurant'
end

def add_rating(value)
  fill_in "review[rating]", :with => value
  click_button('Create Review')
end

def add_comment(text)
  fill_in "review[comment]", :with => text
  click_button('Create Review')
end

def add_rating_and_comment(value, text)
  fill_in "review[rating]", :with => value
  fill_in "review[comment]", :with => text
  click_button('Create Review')
end
