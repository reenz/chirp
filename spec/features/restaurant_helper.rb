def add_restaurant(name, description)
  visit 'restaurants'
  click_link 'New Restaurant'
  fill_in :Name, :with => name
  fill_in :Description, :with => description
  click_button 'Add Restaurant'
end
