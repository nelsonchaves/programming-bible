# Migration
```ruby
create_table :notes do |t|
  t.text :body
  t.references :user, null: false, foreign_key: true
  t.timestamps
end
```

# User Model
```ruby
class User < ApplicationRecord
  has_and_belongs_to_many :foods
  has_many :notes
  accepts_nested_attributes_for :notes
end
```

# Food Model
```ruby
class Food < ApplicationRecord
  has_and_belongs_to_many :users
end
```

# Note Model
```ruby
class Note < ApplicationRecord
  belongs_to :user
end
```

# User Controller
```ruby
def user_params
  params.require(:user).permit(:name, :email, food_ids: [] notes_attributes: [:body])
end
```

# User Form
```ruby
= form_with model: @user do |f|
  = f.label :name
  = f.text_field :name

  = f.label :email
  = f.email_field :email

  = f.collection_select :food_id, Food.all, :id, :name
  or
  = f.collection_check_boxes(:food_ids, Food.all, :id, :name)

  = f.fields_for :notes, Note.new do |notes_form|
  = notes_form.text_area :body

  = f.submit "Save"
```
