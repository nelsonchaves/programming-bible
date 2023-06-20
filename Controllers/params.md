# Params

Parameters are used to send data into your controllers via _forms_ or the _url_. Forms collect data from the user and send it to your controller and it becomes available inside a controller through the _params hash_. And it's not just forms, links can send params as well by pending data to the url.

# URL Structure:
https://school.mixandgo.com/dashboard?foo=bar
![URL Structure](/Images/controllers_3.png)

Those _Query params_ at the end will be available in the params hash as a key value pair:
```ruby
{ foo: "bar" }
```
If we have more query params. We get them all in the params hash
```ruby
/dashboard?name=John&age=25
{ name: "John", age: "25" }
```
And you're not limited to strings in the Parameters. You can also send in arrays and hashes. This syntax is not very intuitive but the params hash will contain an array.
```ruby
/dashboard?colors[]=red&colors[]=blue
{ colors: ["red", "blue"] }
```
To send in a has you need to put the key name inside the brackets
```ruby
?user[name]=John&user[age]=25
{ "user"=> { "name"=>"John", "age"=>"25" }}
```
You can nest an array inside of a hash like this
```ruby
?user[name]=John&user[colors][]=red&user[colors][]=blue
{ "user"=> { "name"=>"John", "colors"=>["red", "blue"] }}
```
# Routing Parameters
Another way of receiving params is via the routing parameters which are any params you have defined in your routes.rb, You  can use a _**:**_ symbol in your routes.rb file to define routing parameters. So if you add a _**:name**_ parameter to the /my-page route, whatever comes after the /my-page path becomes a value for the name key in the params hash.
```ruby
get '/my-page/:name', to: 'site#index'
/my-page/John
{ "name"=>"John" }
```
