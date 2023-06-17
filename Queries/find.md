# Find Queries
```ruby
User.find(1)
User.find("x") # this won't work
User.find([1, 2]) # using multiple IDs
User.first # returns the first user in the database or returns nil
User.first(2) # returns the first two records
User.first! # returns an exception if it cannot return a user
User.last # returns the last user in the database or returns nil
User.last(2) # returns the last two users
User.last! # returns an exception if it cannot return a user
User.find_by(name: "Joe") # finds the first user with the name "Joe", or returns nil
User.find_by!(name: "Joe") # raises an exception if it cannot find the user
```
