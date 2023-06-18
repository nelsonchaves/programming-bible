# Clean Up Name
```ruby
class User < ApplicationRecord
  before_validation :cleanup

  private

    def cleanup
      name.strip!
    end
end
```
```ruby
user = User.new(name: "      John      ")
user.name
=> "John"
```
