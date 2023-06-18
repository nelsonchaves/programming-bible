The _= render user_ line looks for a partial with the name __user.html.erb_ in the app view users folder.
```html
<div id="users">
  <% @users.each do |user| %>
    <%= render user %>
  <% end %>
</div>  
```
