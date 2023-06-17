# One-to-many

The entity on the "many" (child) end needs a foreign key referencing the entity on the “one” (parent) end.
The name of this foreign key needs to be the name of the "one" (parent) entity, followed by "_id".

```ruby
class Event < ApplicationRecord
  has_many :registrations, dependent: :destroy
end

class Registration < ApplicationRecord
  belongs_to :event
end
```

event.registrations
Returns an array of Registration objects that are associated with the event: all the registrations that have an event_id matching the event’s ID.

registration.event
Returns the Event object associated with the registration: the event that matches the ID in the event_id column.

# Many-to-Many relationship / Has-and-Belongs-to-Many
![Many-to-Many relationship](/Images/associations_3.png)
```ruby
rails generate model Color name --no-test-framework
rails generate migration create_table_users_colors
create_table :colors_users, id: false do |t|
  t.belongs_to :user, null: false, foreign_key: true
  t.belongs_to :color, null: false, foreign_key: true
end
class Color < ApplicationRecord
  has_and_belongs_to_many :users
end

class User < ApplicationRecord
  has_and_belongs_to_many :colors
end
```
