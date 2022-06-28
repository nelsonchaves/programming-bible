# has_many

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

# Note Model
```ruby
class Note < ApplicationRecord
  belongs_to :user
end
```

# User Controller
```ruby
def user_params
  params.require(:user).permit(:name, :email, food_ids: [], notes_attributes: [:body])
end
```

# User Form
```ruby
<h1>New user</h1>

<%= form_with model: @user do |form| %>
  <div>
    <%= form.label :name %>
    <%= form.text_field :name %>
  </div>
  <div>
    <%= form.label :email %>
    <%= form.email_field :email %>
  </div>
  <div>
    <%= form.collection_check_boxes(:food_ids, Food.all, :id, :name) %>
  </div>
  <div>
    <%= form.fields_for :notes, Note.new do |notes_form| %>
      <%= notes_form.text_area :body %>
    <% end %>
  </div>
  <div>
    <%= form.submit "Save" %>
  </div>
<% end %>
```
