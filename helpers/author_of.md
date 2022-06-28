# Author of?

```ruby
def author_of?(resource)
  user_signed_in? && current_user.id == resource.user_id ||
  user_signed_in? && current_user.admin?
end
```
