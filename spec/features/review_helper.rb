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
