# Grouping
Allows you to group records by 1 or more attributes. It does it by generating a group_by SQL query. You might want to see how many users are in a database for each country by chaining the count at the end you receive hash back

Generate the User model:
```ruby
rails generate model User name email country
rails db:migrate
```

Create 1000 users:
```ruby
1000.times do
  User.create(name: Faker::Name.name, email: Faker::Internet.email, country: Faker::Address.country)
end
```

Finding how many users are in each country.
```ruby
User.all.group(:country).count
{
  "Sweden"=>4,
  "Canada"=>2,
  "Russia"=>1,
  "England"=>3
}
```

Adding another column so we can group by both.
```ruby
rails g migration add_happy_to_users
add_column :users, :happy, :boolean, default: false, null: false
rails db:migrate
```

Group by both columns:
```ruby
User.all.group(:country, :happy).count
{
  ["Sweden", true]=>4,
  ["Canada", true]=>2,
  ["Russia", false]=>1,
  ["England", true]=>3
}
```
