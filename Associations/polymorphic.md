# Polymorphic
![Polymorphic](/Images/associations_7.png)

#### Generating the Comment model:

```ruby
rails generate model Comment text:text commentable:references{polymorphic}
rails db:migrate
```

####  Here's what the association looks like:

```ruby
class Comment < ApplicationRecord
  belongs_to :commentable, polymorphic: true
end

class User < ApplicationRecord
  has_many :comments, as: :commentable
end

class Product < ApplicationRecord
  has_many :comments, as: :commentable
end
```

#### To add records through the association:

```ruby
user = User.first # You need to have a user
user.comments # => []
user.comments << Comment.create(text: "This user is awesome")
user.comments # => [..]

product = Product.create(name: "Shoes", price: "1000")
product.comments # => []
product.comments << Comment.create(text: "Love these shoes")
product.comments # => [..]
```
