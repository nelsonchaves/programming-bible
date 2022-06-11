# Clean Up Name
```ruby
user = User.new(name: "      John      ")

before_validation :cleanup

private

def cleanup
  name.strip!
end

user.name
=> "John"
