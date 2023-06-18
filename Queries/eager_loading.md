# Eager Loading

What is eager loading?
- One way to improve performance is to reduce the number of database queries through eager loading.
- You can know where we need eager loading through "Bullet Gem"

Generate the models, and add the Faker gem:
```ruby
rails generate model user name email
rails generate model food name user:references
rails db:migrate
bundle add faker
```

Add 10 users:
```ruby
10.times { User.create(name: Faker::Name.name, email: Faker::Internet.email) }
User.all.each { |u| u.foods.map(&:name)}
```

# In Rails there are 3 ways you can do this.
- preload method
- eager_loading method
- includes method

# Preload
You always get 2 separate SQL queries. The first one will fetch the parent records and the 2nd one the associated records.
```ruby
User.preload(:foods)
```
But because of 2 separate queries you cannot filter based on the associated records. And if you try to add a where clause you'll get an error
```ruby
User.preload(:foods).where(foods: { name: "Peppers" })
```

# Eager Load
The similar method eager_load that allows you to add the where clause because there a single query instead of 2
```ruby
User.eager_load(:foods)
User.eager_load(:foods).where(foods: { name: "Peppers" })
```

# Includes
It provides the best of the 2 methods based on usage. By default it will use preload to fetch the data using 2 separate SQLs
```ruby
User.includes(:foods)
```

But if you provide a where condition it will switch to _eager_load_. Obviously you don't want to always eager_load your data because it will increase your memory consumption.
```ruby
User.includes(:foods).where(foods: { name: "Peppers" })
```
