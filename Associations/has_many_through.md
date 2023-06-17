# Has-Many-Through
![The San Juan Mountains are beautiful!](/Images/associations_6.png)

```ruby
rails g model product name:string price:integer --no-test-framework

rails g model order user:references:index product:references:index qty:integer price:integer created_at:timestamp --no-timestamps

class Product < ApplicationRecord
  has_many :orders
  has_many :users, through: :orders
end

class User < ApplicationRecord
  has_many :orders
  has_many :products, through: :orders
end
```
