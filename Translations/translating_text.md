```ruby
# app/views/site/index.html.erb
<%= translate(".heading") %>
<%= translate(".form_footer", year: Date.current.year) %>
```
For the submit button remove the label and add nil
```ruby
<%= f.submit nil, class: "button" %>
```
```yaml
<!-- app/config/locales/en.yml -->
en:
  helpers:
    label:
      username: "User name"
      password: "Secret password"
    submit:
      submit: "Send it!"
  site:
    index:
      heading: "Hello World"
      form_footer: "©"
```
To add a new language to the application. Add another YML file ```portuguese.yml```.

To configure the language globally for the entire application, you can set the ```default_locale``` config. This changes the whole app from English to Portuguese.
```ruby
# app/config/application.rb
config.i18n.default_locale = :portuguese
```
If you want the Rails app to serve multiple languages at the same time, then the above doesn't make sense. remove the code and set the locale in the controller because controllers are handling requests.
```ruby
def index
  locale = params[:locale] || I18n.default_locale
  I18n.locale = locale
end
```
But this can also be weird for users to do. An easier way is by adding two links. 1 for English and 1 for Portuguese. When you click those links you'll get the page in the respective language because each one of them them will set the different locale parameter.
```ruby
<%= link_to t(".english"), root_path(locale: :portuguese) %>
```
