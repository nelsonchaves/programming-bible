# Partials

In Rails, rendering partials is a common practice to modularize and reuse view templates. Here's an enhanced explanation of how it works:

### Rendering a Single Object

The line `= render user` within a loop in the `users` view is a shorthand for rendering a partial. Rails automatically looks for a partial named `_user.html.haml` in the `app/views/users` folder for each user in the `@users` collection:

```ruby
# In the users view
- @users.each do |user|
  = render user
```

### Rendering Partials with Local Variables

You can explicitly render a partial and pass local variables to it. This approach is more flexible and clear, especially when dealing with complex data structures:

```ruby
# Example of rendering a partial with local variables
%div
  = variable_name

= render partial: "partial_name", locals: { variable_name: value }
```

### Real-World Example

Here’s how you can render a `footer` partial with a dynamic date:

```ruby
= render partial: "layouts/footer", locals: { date: Date.today.to_formatted_s(:long) }
# or using the shorthand notation
= render "layouts/footer", date: Date.today.to_formatted_s(:long)
```

### Customizing Local Variable Names

In the `user` partial, the local variable `user` will contain the value of whatever is passed in the `object` key. If you want to use a different name for this local variable, use the `as` key:

```ruby
= render partial: "user", object: @xyz, as: "person"
```

### Rendering Collections

Rails can automatically infer the partial name and local variable name from the model in the collection. This makes rendering collections of objects more straightforward:

```ruby
= render collection: @users
```

In this case, Rails will look for a `_user.html.haml` partial and pass each user in the `@users` collection to this partial as a local variable named `user`.
