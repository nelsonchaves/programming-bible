The _= render user_ line looks for a partial with the name __user.html.erb_ in the app view users folder.
```html
<div id="users">
  <% @users.each do |user| %>
    <%= render user %>
  <% end %>
</div>  
```

Every partial that includes variables inside of it needs to be provided with 
```ruby
<div>
  <%= variable_name %>
</div>

render partial:  "partial_name", locals: { variable_name: value }
```
