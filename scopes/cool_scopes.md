# Cool Scopes
```ruby
scope :filter_by_name, -> (name) { where('name ILIKE ?', "%#{name}%") }
```
