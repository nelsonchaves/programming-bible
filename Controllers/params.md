# Params

Parameters are used to send data into your controllers via _forms_ or the _url_. Forms collect data from the user and send it to your controller and it becomes available inside a controller through the _params hash_. And it's not just forms, links can send params as well by pending data to the url.

URL Structure:
https://school.mixandgo.com/dashboard?foo=bar
![URL Structure](/Images/controllers_2.png)

Those _Query params_ at the end will be available in the params hash as a key value pair:
```ruby
{ foo: "bar" }
```
