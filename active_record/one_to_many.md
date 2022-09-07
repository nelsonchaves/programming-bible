# One-to-many

The entity on the "many" (child) end needs a foreign key referencing the entity on the “one” (parent) end.
The name of this foreign key needs to be the name of the "one" (parent) entity, followed by "_id".
```ruby
class Event < ApplicationRecord
	has_many :registrations,  :dependent => :destroy
end

class Registration < ApplicationRecord
	belongs_to :event
end
```
