# Nested forms

### Has And Belongs To Many
we're looking at how to associate records (from a separate model) via a form.
#### Database:
```ruby
create_table "foods", force: :cascade do |t|
  t.string "name"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

create_table "foods_users", id: false, force: :cascade do |t|
  t.integer "food_id", null: false
  t.integer "user_id", null: false
end

create_table "users", force: :cascade do |t|
  t.string "name"
  t.string "email"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end
```
#### Model:
```ruby
class Food < ApplicationRecord
  has_and_belongs_to_many :users
end

class User < ApplicationRecord
  has_and_belongs_to_many :foods
end
```
#### Controller:
```ruby
def user_params
  params.require(:user).permit(:name, :email, food_ids: [])
end
```
#### Form:
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
#### View show page:
```ruby
<div><%= user.name %></div>
<div><%= user.email %></div>

<div><strong>Favorite foods:</strong></div>
<ul>
  <% user.foods.each do |food| %>
    <li><%= food.name %></li>
  <% end %>
</ul>
```

# Has Many
What if we need to also create or update the associated record. For example, we could have an associated Note model, and we want to also be able to create a note when we create the User record. The index is needed because we can have more than 1 note if we wanted to

#### Database:
```ruby
create_table "notes", force: :cascade do |t|
  t.text "body"
  t.integer "user_id", null: false
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
  t.index ["user_id"], name: "index_notes_on_user_id"
end

create_table "users", force: :cascade do |t|
  t.string "name"
  t.string "email"
  t.datetime "created_at", null: false
  t.datetime "updated_at", null: false
end

add_foreign_key "notes", "users"
```
#### Model:
```ruby
class Note < ApplicationRecord
  belongs_to :user
end

class User < ApplicationRecord
  has_and_belongs_to_many :foods
  has_many :notes
  accepts_nested_attributes_for :notes
end
```
#### Controller:
```ruby
def user_params
  params.require(:user).permit(:name, :email, food_ids: [], notes_attributes: [:body])
end
```
#### Form:
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
    <%= form.fields_for :notes, Note.new do |notes_form| %>
      <%= notes_form.text_area :body %>
    <% end %>
  </div>
  <div>
    <%= form.submit "Save" %>
  </div>
<% end %>
```

#### View show page:
```ruby
<div><%= user.name %></div>
<div><%= user.email %></div>

<div><strong>Favorite foods:</strong></div>
<ul>
  <% user.foods.each do |food| %>
    <li><%= food.name %></li>
  <% end %>
</ul>
<div>
  <% user.notes.each do |note| %>
    <%= note.body %>
    <br />
  <% end %>
</div>
```
