# Database Relationships
- One-to-One
- One-to-Many
- Many-to-Many

# Rails Associations
- Has-One/Belong-to
- Has-Many
- Has-and-Belongs-to-Many
- Has-Many-Through
- Polymorphic

# Has-One / Belong-to
### One-to-One relationship
![One-to-One relationship](/Images/associations_1.png)
# One-to-Many relationship / Has-Many
![One-to-Many relationship / Has-Many](/Images/associations_2.png)
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
#Has-Many-Through
![The San Juan Mountains are beautiful!](/Images/associations_6.png)
