# CHIRP

[Tom Grand](https://github.com/Tagrand) || [Reena Sharma](https://github.com/reenz) || [Agata Golebiewska](https://github.com/MissDove) || [Dominic Vernon](https://github.com/domvernon)

#### GOAL OF THE PROJECT

The main goal of this project was to create a clone of Yelp by using Ruby on Rails and to learn the following:
- creating Rails applications
- the structure of Rails app (MVC, the router, helpers)
- TDD in Rails with RSpec and Capybara
- Associations
- Validations

##### Version 1 - MVP

For the initial version we want to duplicate the core functionality of Yelp - users should be presented with a list of restaurants which they can leave reviews for.


###### V1 Specification
* Visitors can create new restaurants using a form, specifying a name and description
* Restaurants can be edited and deleted
* Visitors can leave reviews for restaurants, providing a numerical score (1-5) and a comment about their experience
* The restaurants listings page should display all the reviews, along with the average rating of each restaurant
* Validations should be in place for the restaurant and review forms - restaurants must be given a name and rating, reviews must be given a rating from 1-5 (comment is optional)

##### Version 2 - User login

Adding a user login system by adding a popular gem - Devise - to accelerate the implementation of our user system.

###### V2 Specification
* Users can register/login
* Some indication should be given on the page (as part of the layout) whether the user is currently logged in, along with links to the available actions (i.e. Logout/Edit account is signed in, otherwise Sign In/Sign Up)
* The email address of the reviewer should be displayed as part of the review

#### User Stories

```
As a user
So that I can show off my restaurant
I want to create a restaurant with a name and a description
```

```
As a user
So I can show off all of my restaurants
I want to be able to create multiple restaurants with a name and description

```

```
As a user
So I can update my restaurants
I want to be able to edit and delete
```

```
As a user
So that I can leave a review for a restaurant
I want to provide a score and a comment
```

```
As a user
So I can choose which restaurant to go to
I want to be able to see all the reviews and the average rating for each restaurant
```

```
As a user
So I can easily compare restaurants
Each restaurant should have a name and a rating
```

```
As a user
So I can submit a helpful review
When I submit my review, it should always have a rating, the comment is optional
```

#### TEAM WORK
