# Nested forms

# Has And Belongs To Many
we're looking at how to associate records (from a separate model) via a form.
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

# Has Many
What if we need to also create or update the associated record. For example, we could have an associated Note model, and we want to also be able to create a note when we create the User record.

```ruby
```
