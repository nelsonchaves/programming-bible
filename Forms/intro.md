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

returns a set of select tags pre-selected for accessing the specified datetime-based attribute
```ruby
<%= f.datetime_select :starts_at %>
```

returns an input tag of type “number” for accessing the specified attribute
```ruby
<%= f.number_field :price %>
```

returns a textarea tag set for accessing the specified attribute
```ruby
<%= f.text_area :description, cols: 40, rows: 7 %>
```

```ruby
= f.collection_select :food_id, Food.all, :id, :name
or
= f.collection_check_boxes(:food_ids, Food.all, :id, :name)
```

```ruby
= f.fields_for :notes, Note.new do |notes_form|
= notes_form.text_area :body
```
