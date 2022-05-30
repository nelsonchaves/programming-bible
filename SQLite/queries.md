# Queries
```ruby
User.where("name = 'John'") - Not advisable

# You may have
Params = { search_term: "John" }
User.where("name = '#{params[:search_term]}'")
# This is also a bad idea because someone can insert malicious code and become a security risk

# One to prevent this issue is using provisional handlers
User.where("name = ? AND email = ?, params[:search_term], "email")
