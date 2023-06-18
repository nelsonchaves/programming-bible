The _= render user_ line looks for a partial with the name __user.html.erb_ in the app view users folder.
```ruby
<div id="users">
  <% @users.each do |user| %>
    <%= render user %>
  <% end %>
</div>  
```

```ruby
<div>
  <%= variable_name %>
</div>

render partial:  "partial_name", locals: { variable_name: value }
```
Example
```ruby
<% render partial: "layouts/footer", locals: { date: Date.new.to_formatted_s(:long) } %>
<% render "layouts/footer", date: Date.new.to_formatted_s(:long) %>
```

In this example, inside the _user_ partial. the local variable _user_ will have the value of whatever the object key contains
```ruby
<h1>users</h1>
  <%= render partial: "user", object: @xyz, as: "person" %>
```
