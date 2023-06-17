# Joins Queries
Generating the models:
```ruby
rails generate model User name email
rails generate model Food name user:references
rails db:migrate # running the migrations
bundle add faker # adding the Faker gem
```

If you need to populate your database with a lot of data, you can open up the Rails console and copy/paste this code snippet.
```ruby
rails console
```

For this code snippet to work, you need to have the faker gem in your Gemfile.
```ruby
1000.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email)
end
```

And if you want to generate a few food records for each user, you can do it with the following code snippet.
```ruby
User.all.each do |user|
  Food.create(name: Faker::Food.vegetables, user: user)
end
```

To retrieve the data using the joins method:
```ruby
User.where(foods: { name: 'Lettuce' }).joins(:foods)
```

Generate the Color model:
```ruby
rails g model Color name user:references
rails db:migrate
```

Create three colors for each user:
```ruby
User.all.each { |u| 3.times { Color.create(name: Faker::Color.color_name, user: u) } }
```

Adding colors to the query:
```ruby
User.where(foods: { name: 'Lettuce' }, colors: { name: 'red' }).joins(:foods)
User.where(foods: { name: 'Lettuce' }, colors: { name: 'red' }).joins(:foods, :colors)
```

Add the Nutrient model:
```ruby
rails g model Nutrient name food:references
```

And set up the model:
```ruby
class Food < ApplicationRecord
  belongs_to :user
  has_many :nutrients
end
```
So you can use the nested join to fetch based on foods and their nutrients:
```ruby
User.where(foods: { name: 'Lettuce' }, nutrients: { name: "X" }).joins(foods: :nutrients)
```








```ruby
# The Joins method use lazy loading
# Here we can filter out the User based on food name "lettuce"
User.where( foods: { name: "Lettuce" }).joins(:foods)

# Here we can filter our the users on both the colors and the food by adding a second argument in the in joins
User.where( foods: { name: "Peppers" }, colors: { name: 'black' }).joins(:foods, :colors)

# Here you can use Nested joins where the User has many :foods and the foods has_many :nutrients. the difference between the nested and the non-nested version of the join query is that the non-nested has an array as the argument to the joins method. And the nested one has a hash argument instead
User.where( foods: { name: "Peppers" }, nutrients: { name: 'X' }).joins(foods: :nutrients)
```
