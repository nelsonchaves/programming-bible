# Forms

# form_with
- In earlier versions of rails it's functionaly was split into 2 different helpers named: form_tag and form_for.
- Inside the form_with block you have access to a form object which provides various helper methods for generating form elements like inputs, checkboxes, buttons and everything you can add inside of a form.




### What is the difference between form_for and form_tag?
- form_tag and form_for both are used to submit the form and it’s elements.
- The main difference between these two is the way of managing objects related to that particular model is different.

# form_for
- We should use "form_for" tag for a specific model
- It performs the "standard http post" which is having fields related to active record (model) objects

# form_tag
- It creates a form as a normal form.
- form_tag also performs the "standard http post" without any model backed and has normal fields. This is mainly used when specific data need to be submitted via form.
- It just creates a form tag and it is best used for non-model forms.

Example:
```html
<% form_tag ‘/articles’ do -%>
<%= text_field_tag “article”, “firstname” %>
<% end -%>
generates a form for a nested resource
```

# Form Examples

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
