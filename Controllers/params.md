# Params

Parameters are used to send data into your controllers via _forms_ or the _url_. Forms collect data from the user and send it to your controller and it becomes available inside a controller through the _params hash_. And it's not just forms, links can send params as well by pending data to the url.

# URL Structure:
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
Another way of receiving params is via the routing parameters which are any params you have defined in your routes.rb, You can use a _**:**_ symbol in your routes.rb file to define routing parameters. So if you add a _**:name**_ parameter to the /my-page route, whatever comes after the /my-page path becomes a value for the name key in the params hash.
```ruby
get '/my-page/:name', to: 'site#index'
/my-page/John
{ "name"=>"John" }
```
The most common use of routing params is to use ids as parameters. That's the route rails generates for you. And the id of the user becomes available for you to use inside the controller.
```ruby
get '/users/:id/edit', to: 'users#edit'
/users/1/edit
{ "id"=>"1" }
```
# Strong params
Rails provides a feature called strong params, which is used to prevent security issues when passing a params hash to a Model

#### Routes:
```ruby
Rails.application.routes.draw do
  resources :users, only: %i[create new show edit]
  get "/my-page/:name", to: "site#index"
  root "site#index"
end
```
#### Controller:
```ruby
def new
  @user = User.new
end
```
#### Form:
```ruby
<h1>New user</h1>

<%= form_with model: @user do |form| %>
  <div>
    <%= form.label :name %>
    <%= form.text_field :name %>
  </div>
  <div>
    <%= form.label :age %>
    <%= form.text_field :age %>
  </div>
  <div>
    <%= form.submit :save %>
  </div>
<% end %>
```
#### Terminal:
```zsh
Started POST "/users" for ::1 at 2023-06-20 13:00:37 -0700
Processing by UsersController#create as TURBO_STREAM
  Parameters: {"authenticity_token"=>"[FILTERED]", "user"=>{"name"=>"John", "age"=>"25"}, "commit"=>"save"}
  Rendering layout layouts/application.html.erb
  Rendering users/create.html.erb within layouts/application
  Rendered users/create.html.erb within layouts/application (Duration: 0.8ms | Allocations: 146)
  Rendered layout layouts/application.html.erb (Duration: 4.1ms | Allocations: 2488)
Completed 200 OK in 6ms (Views: 4.7ms | ActiveRecord: 0.0ms | Allocations: 3264)
```
# Params hash
In the browser console. If we simply print the params you will see it's not a regular hash, it's an object of type **ActionController::Parameters** that behaves like a hash but it also contains the _permitted_ attribute which is set to _false._ And that's how Rails knows to reject our parameters for mass assignment. We can turn that flag on by using the _**permit**_ method which is available in the params object.

```zsh
>> params
<ActionController::Parameters
{"authenticity_token"=>"J5Ql23REKHFSt4KHdwoZi5vT6HjMqGlSV5uqer8nlVDtoqfVdJ_ls8A3m0AdYJeBNeYgI8vTbkTA6rT7uhpK0A",
"user"=>#<ActionController::Parameters {"name"=>"John", "age"=>"25"} permitted: false>, "commit"=>"save",
"controller"=>"users", "action"=>"create"} permitted: false>
```
### Permit
We need to specify the attributes. When you call permit you can now see the flag is set to true. It allows you to initialize or create the user object via mass assignment.
```zsh
>> params[:user].permit(:name, :age)
=> #<ActionController::Parameters {"name"=>"John", "age"=>"25"} permitted: true>
```
To permit all the attributes use a bang method at the end "_**!**_". You should not use bang version except for when you need to debug something.
```zsh
>> params[:user].permit!
=> #<ActionController::Parameters {"name"=>"John", "age"=>"25"} permitted: true>
```
### Require
There's another method available in the ActionController object called _**require**_. And this one is very useful because it lets you raise a helpful exception when parameters are missing.

```zsh
x
>> params.require(:user)
=> #<ActionController::Parameters {"name"=>"John", "age"=>"25"} permitted: false>

>> params.require(:foo)
ActionController::ParameterMissing: param is missing or the value is empty: foo
	from /Users/nelsonchaves/Sites/tutorials/mix-go/prorb_controllers/app/controllers/users_controller.rb:11:in `create'

>> params.require(:user).permit(:name, :age)
=> #<ActionController::Parameters {"name"=>"John", "age"=>"25"} permitted: true>
```
