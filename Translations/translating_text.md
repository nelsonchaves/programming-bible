```ruby
<!-- app/views/site/index.html.erb -->
<%= translate(".heading") %>
<%= translate(".form_footer", year: Date.current.year) %>
```
```yaml
<!-- app/config/locales/en.yml -->
en:
  site:
    index:
      heading: "Hello World"
      form_footer: "©"
```
