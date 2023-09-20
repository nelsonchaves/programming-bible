# Where method queries
It's important to know how to laser focus your queries so you don't end up retrieving more data than you have to.
This is "where" method comes in handy. probably the most used query of them all

### Search users by their names.

This is the very basic level but it's not advisable to do this when retrieving data based on user input.
This is a bad idea because the :search_term does not escape. Someone could insert malicious code as part of the search term and it could become a security risk

```ruby
🛑 User.where("name = '#{params[:search_term]}'")
🛑 User.where("name = 'John'")
```

### Search users by their names and emails (via positional handlers).
One way to prevent the issue above is using "provisional handlers".
The question mark and the 1st argument will be replaced by the 2nd and 3rd arguments and in the proccess whatever string are in those arguments will be sanitized to prevent the security problem above which are called "sql injections"
```ruby
User.where("name = ? AND email = ?", params[:search_term], params[:search_email])
```

### Search users by their names and emails (via placeholder conditions).
Another option is to use "placeholder conditions" with a hash as 2nd argument.
```ruby
User.where("name = :name AND email = :email", { name: params[:search_term], email: params[:search_email] })
```

### Using the hash syntax.
And these commands generates the same SQL commands as above
```ruby
User.where(name: params[:search_term])
User.where.not(name: params[:search_term]) # negating the query
User.where(name: "John").or(User.where(name: "Emma")) # OR
User.where(name: "John").where(age: 25) # combining conditions
```
This is generating an AND query
```ruby
User.where(name: "John", email: "jdoe@email.com")
```

Comparing two fields and ensure that their data types match, you can convert the id field to a string instead. The PostgreSQL function to convert a field to a string is ::text. Please note that while this query works if id is a number and badge_id is a string, it might not always give you the result you expect if badge_id contains leading zeroes or other non-numeric characters.
```ruby
Student.where("badge_id != id::text")
```
