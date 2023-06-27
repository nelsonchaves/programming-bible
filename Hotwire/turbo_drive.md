# Turbo Drive
- Responsible for handling page navigation. a JavaScript layer that watches for linklix and form submissions and instead of allowing them to make new requests like they normally would it intercepts and converts into fetch requests.
- Then it takes the full page response from the server and it merges the head section of the page with the current one and it replace the current pages body with the one it got back from the server.
- Forms works slightly different under the hood. When you submit a form Turbo Drive expects the response to either be a 303 redirect or an error status code. If it's a redirect it will follow that redirect, load the new page and update the current page with the contents of the new page. If on the other hand the responses is in the 400 or 500 range of status codes. Turbo drive allows you to display validation errors or anything like that

To disable Turbo Drive, you can set the Turbo.session.drive attribute to false after importing Turbo from the turbo-rails library.
```ruby
# app/javascript/application.js
import { Turbo } from "@hotwired/turbo-rails"
Turbo.session.drive = false
```

To selectively disable Turbo Drive on some links or forms, you can set the turbo attribute to false.
```ruby
<%= link_to "Turbo disabled", second_page_path, data: { turbo: "false" } %>
```
