The **_= render user_** line looks for a partial with the name **__user.html.erb_** in the app view users folder.
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
### Example
```ruby
<% render partial: "layouts/footer", locals: { date: Date.new.to_formatted_s(:long) } %>
<% render "layouts/footer", date: Date.new.to_formatted_s(:long) %>
```

### passing an obejct and
Inside the **_user_** partial. the local variable **_user_** will have the value of whatever the object key contains. And if you don't want the local variable to be named **_user_**. You can see the **_as:_** key to give it a different name.

```ruby
<%= render partial: "user", object: @xyz, as: "person" %>
```

### Passing all the users as the collection key
Rails is looking at the name of the model in the collection and it can figure out the partial name and the local variable from the name of the Model
```ruby
<% render collection: @users %>
```
