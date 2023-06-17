# Where method
It's important to know how to laser focus your queries so you don't end up retrieving more data than you have to.
This is "where" method comes in handy. probably the most used query of them all

### Search users by their names.

This is the very basic level but it's not advisable to do this when retrieving data based on user input.
This is a bad idea because the :search_term does not escape. Someone could insert malicious code as part of the search term and it could become a security risk

```ruby
🚧 User.where("name = '#{params[:search_term]}'")
🚧 User.where("name = 'John'")
```
.callout_warn
### Search users by their names and emails (via positional handlers).
```ruby
User.where("name = ? AND email = ?", params[:search_term], params[:search_email])
```

### Search users by their names and emails (via placeholder conditions).
```ruby
User.where("name = :name AND email = :email", { name: params[:search_term], email: params[:search_email] })
```

### Using the hash syntax.
```ruby
User.where(name: params[:search_term])
User.where.not(name: params[:search_term]) # negating the query
User.where(name: "John").or(User.where(name: "Emma")) # OR
User.where(name: "John").where(age: 25) # combining conditions
```
