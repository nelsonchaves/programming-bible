# Eager Loading
```ruby
What is eagerloading?
- One way to improve performance is to reduce the number of database queries through eager loading.
- You can know where we need eager loading through “Bullet’ Gem


User.all.each { |u| u.foods.map(&:name)}
# In Rails there are 3 rails you can do this. [preload, eager_loading, includes]

# Preload - You always get 2 separate SQL queries. The first one will fetch the parent records and the 2nd one the associated records.
User.preload(:foods)

# but because of 2 separate queries you cannot filter based on the associated records. and if you try to add a where clause you'll get an error
User.preload(:foods).where(foods: { name: "Peppers" })

# The similar method eager_load that allows you to add the where clause because there a single query instead of 2
User.eager_load(:foods)
User.eager_load(:foods).where(foods: { name: "Peppers" })

# includes provide the best of 2 methods based on usage. by default it will use preload to fetch the data using 2 separate SQLs
User.includes(:foods)

# but if you provide a where condition it will switch to eager_load. Obviously you dont want to always eager_load your data because it will increase your memory consumption.
User.includes(:foods).where(foods: { name: "Peppers" })
```
# Grouping
```ruby
# allows you to group records by 1 or more attributes. it does it by generating a group_by SQL query. You might want to see how many users are in a database for each country by chaining the count at the end you receive hash back
User.all.group(:country).count
=> "Sweden"=>4

User.all.group(:country, :happy).count
=> ["Sweden", true]=>2
```
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
