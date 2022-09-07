# Forms

generates a form for a nested resource
```ruby
<%= form_for([@event, @registration]) do |f| %>
```

generates a form for a single resource
```ruby
<%= form_for(@event) do |f| %>
```

returns a select tag and a series of contained option tags for the specified attribute
```ruby
<%= f.select :how_heard, ["Blog", "Newsletter"] %>
```

```ruby
<%= f.datetime_select :starts_at %>
returns a set of select tags pre-selected for accessing the specified datetime-based attribute
```

returns an input tag of type “number” for accessing the specified attribute
```ruby
<%= f.number_field :price %>
```

returns a textarea tag set for accessing the specified attribute
```ruby
<%= f.text_area :description, cols: 40, rows: 7 %>
```
