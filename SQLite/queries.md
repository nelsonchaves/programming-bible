# Queries
```ruby
User.where("name = 'John'") - Not advisable

# You may have
Params = { search_term: "John" }
User.where("name = '#{params[:search_term]}'")
# This is also a bad idea because someone can insert malicious code and become a security risk

# One to prevent this issue is using provisional handlers
User.where("name = ? AND email = ?", params[:search_term], "email")

# named placeholders for my .where method
User.where("name = :name AND email = :email", { name: "John", email: "email" })

User.where(name: "John")
User.where.not(name: "John")
User.where(name: "John").or(User.where(name: "John"))
User.where(name: "John").where(name: "Emma")

1
# This is generating an AND query 
User.where(name: "John", email: "jdoe@email.com")
