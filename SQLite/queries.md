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

User.where(name: "John")
User.where.not(name: "John")
User.where(name: "John").or(User.where(name: "John"))
User.where(name: "John").where(name: "Emma")

1
# This is generating an AND query 
User.where(name: "John", email: "jdoe@email.com")
