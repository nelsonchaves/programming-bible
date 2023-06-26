# Controllers

- Controller names are plural. 
- When you don’t explicitly tell the action which view template to render, it looks for one with the same name as the action.

```ruby
<h1>Site#index</h1>
<p>Find me in app/views/site/index.html.erb</p>


<div>
  <h2>Params</h2>
  <%= params %>
</div>
<div>
  <h2>Headers</h2>
  <%= headers %>
</div>
<div>
  <h2>Session</h2>
  <%= session.to_h %>
</div>
<div>
  <h2>Request</h2>
  <%= request.inspect %>
</div>

<%= link_to "New user", new_user_path %>
```
