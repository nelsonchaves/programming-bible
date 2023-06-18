# Fancy Queries
```ruby
# Through the user object:
user = User.first
user.foods.first # to get a food object, or user.foods.find(ID) if you have an ID
user.foods.first.nutrients # to get all the nutrients of a particular food object
user.foods.second.nutrients.map(&:name) # to extract the `name` from the list

# Through the Food model:
Food.where(user_id: 1) # gives you back a list of foods
Food.where(user_id: 1).map(&:nutrients).flatten.uniq # returns a list of nutrients
Food.where(user_id: 1).map(&:nutrients).flatten.uniq.map(&:name) # returns the names of the nutrients

# Through the Nutrient model:
Nutrient.joins(:food).where(foods: { user_id: 1 }).map(&:name)
