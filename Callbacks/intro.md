# Callbacks

```ruby
https://guides.rubyonrails.org/active_record_callbacks.html
```
- Callbacks allow you to trigger logic before or after an alteration of an object's state.
- Callbacks are methods that get called at certain moments of an object's life cycle.
- With callbacks it is possible to write code that will run whenever an Active Record object is created, saved, updated, deleted, validated, or loaded from the database.

```ruby
class User < ApplicationRecord
  before_validation { puts "before_validation called" }
  before_save       { puts "before_save called" }
  before_create     { puts "before_create called" }

  after_validation  { puts "after_validation called" }
  after_create      { puts "after_create called" }
  after_save        { puts "after_save called" }
  after_commit      { puts "after_commit called" }
  after_rollback    { puts "after_rollback called" }
end
```
