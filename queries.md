# Where Method Queries
```ruby
User.where("name = 'John'") - Not advisable

# You may have

params = { search_term: "John" }


# You can do this but this is a bad idea because the search term does not escape someone can insert malicious code as part of the search term and become a security risk

User.where("name = '#{params[:search_term]}'")


# One way to prevent the issue above is using "provisional handlers".
# The question mark and the 1st argument will be replaced by the 2nd and 3rd arguments and in the proccess whatever string are in those arguments will be sanitized to prevent the security problem above which are called "sql injections"

User.where("name = ? AND email = ?", params[:search_term], "email")


# Another option is to use "placeholder conditions" with a hash as 2nd argument.

User.where("name = :name AND email = :email", { name: "John", email: "email" })


# And these commands generates the same SQL commands as above

User.where(name: "John")
User.where.not(name: "John")
User.where(name: "John").or(User.where(name: "John"))
User.where(name: "John").where(name: "Emma")


# This is generating an AND query 

User.where(name: "John", email: "jdoe@email.com")
```

# Ordering Queries
```ruby
# This is the place holder conditions here to filter out the the most recent users who joined before this month.
# You could fetch this in any order and then sort them in memory. It's more efficient to let the database do the sorting for you.

User.where("created_at >= :this_month", { this_month: Date.today.beginning_of_month }).order(created_at: :desc)
```
# Scopes
```ruby
# You can create scope queries with or without an argument


# This will pull all the active users

scope :active, -> { where(active: true) }
User.active


# This will pull all the users older than the age provided in the argument

scope :older_than, ->(age) { where("age > ?", age) }
User.older_than(25)


# You can daisy chain the scopes like this

User.older_than(25).active


# You can also have a default scope. One that applies to all queries even if you dont specify it.

default_scope { where(active: true) }


# This will pull all the users older than the age provided in the argument and the users created within the current year

scope :younger_than, ->(age) { where("age < ?", age).where("created_at > :this_year", { this_year: Date.today.beginning_of_year }) }
User.younger_than(25)

# This will pull all the users between the ages provided ex: between 20-45 age. And also all users that are happy

scope :min_max_happy, ->(min, max) { where("age >= ? AND age <= ?", min, max).where(happy: true) }
User.min_max_happy(20, 45)
```
# Joins Queries
```ruby
# The Joins method use lazy loading
# Here we can filter out the User based on food name "lettuce"
User.where( foods: { name: "Lettuce" }).joins(:foods)
# Here we can filter our the users on both the colors and the food by adding a second argument in the in joins
User.where( foods: { name: "Peppers" }, colors: { name: 'black' }).joins(:foods, :colors)
# Here you can use Nested joins where the User has many :foods and the foods has_many :nutrients. the difference between the nested and the non-nested version of the join query is that the non-nested has an array as the argument to the joins method. And the nested one has a hash argument instead
User.where( foods: { name: "Peppers" }, nutrients: { name: 'X' }).joins(foods: :nutrients)
```
# Eager Loading
```ruby
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
# allows you to group records by 1 or more attributes. it does it by generating a group_by SQL query. You might want to see how many users are in a databsae for each country
by chaining the count at the end you receive hash back
User.all.group(:country).count
>> "Sweden"=>4
User.all.group(:country, :happy).count
>> ["Sweden", true]=>2
